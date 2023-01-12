package com.kh.yess.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.yess.member.dao.MemberDao;
import com.kh.yess.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MemberServiceImpl implements MemberService{

	@Autowired
	private BCryptPasswordEncoder enc;
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private MemberDao memberDao;

	//회원가입
	@Override
	@Transactional
	public int join(MemberVo vo) {
		
		//암호화
		String Pwd = vo.getPwd();
		String newPwd = enc.encode(Pwd);
		vo.setPwd(newPwd);
		
		int result = memberDao.insertMember(sst, vo);
		
		if(result == 1) {
			int result2 = memberDao.insertMemberPoint(sst);
			result = result * result2;
		}
		
		return result;
	}

	//로그인
	@Override
	public MemberVo login(MemberVo vo) {
		
		MemberVo dbMember = memberDao.selectOneMember(sst, vo);
		
		if(dbMember==null)return null;
		
		log.debug("s.vo : " + vo);
		
		int gradeNo = dbMember.getGradeNo();
		log.debug("s.gradeNo : " + gradeNo);
		
		if(gradeNo == 9) return dbMember;
		
		String pwd = vo.getPwd();
		String dbPwd = dbMember.getPwd();
		
		if(enc.matches(pwd, dbPwd)) {
			return dbMember;
		}else {
			return null;
		}
	}

	//마이페이지 비밀번호 확인
	@Override
	public int checkPwd(MemberVo vo, String cPwd) {
		
		MemberVo checkMember = memberDao.selectOnePwd(sst, vo);
		
		String dbPwd = checkMember.getPwd();
		
		if(enc.matches(cPwd, dbPwd)) {
			return 1;
		}else {
			return 0;
		}
	}
	
	//마이페이지 수정
	@Override
	public int memberInfoEdit(MemberVo vo) {
		return memberDao.updateMember(sst, vo);
	}

	//아이디 중복확인
	@Override
	public int doubleCheckbyId(String id) {
		return memberDao.doubleCheckbyId(sst , id);
	}

	//닉네임 중복확인
	@Override
	public int doubleCheckbyNick(String nick) {
		return memberDao.doubleCheckbyNick(sst , nick);
	}
	
	//휴대폰번호 중복확인
	@Override
	public int doubleCheckbyPhone(String phone) {
		return memberDao.doubleCheckbyPhone(sst , phone);
	}

	//이메일 중복확인
	@Override
	public int doubleCheckbyEmail(String email) {
		return memberDao.doubleCheckbyEmail(sst , email);
	}

	//이메일로 아이디 찾기
	@Override
	public String findIdByEmail(String email){
		log.debug("s email : " + email);
		return memberDao.findIdByEmail(sst, email);
	}

	//회원탈퇴
	@Override
	public int removeMember(String id) {
		return memberDao.removeMember(sst, id);
	}

	//이메일로 비밀번호 찾기
	@Override
	public MemberVo findPwdByEmail(MemberVo vo) {
		return memberDao.findPwdByEmail(sst, vo);
	}

	//임시비밀번호 암호화
	@Override
	public int changeTempKey(MemberVo lostMember) {
		return memberDao.changeTempKey(sst, lostMember);
	}


	//전화번호로 아이디 찾기
	@Override
	public String findIdByPhone(String phone) {
		log.debug("s phone : " + phone);
		return memberDao.findIdByPhone(sst, phone);
	}


	//로그인 출석체크
	@Override
	@Transactional
	public MemberVo attendCheck(MemberVo loginMember) {
		
		int result = memberDao.checkAttend(sst, loginMember.getNo());
		
		if(result !=0) {
			return loginMember;
		}
		int result2 = memberDao.updateAttend(sst, loginMember.getNo());
		
		int result3 = memberDao.updateAttendPoint(sst, loginMember.getNo());
		
		int addPoint = loginMember.getAddPoint() + 100;
		int point = loginMember.getPoint() + 100;
		loginMember.setAddPoint(addPoint);
		loginMember.setPoint(point);
		
		int result4 = memberDao.updateMyPoint(sst, loginMember);
		
		if(result2 * result3 * result4 == 0) {
			return null;
		}
		return loginMember;
	}

}//class

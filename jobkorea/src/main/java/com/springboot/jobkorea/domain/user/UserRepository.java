package com.springboot.jobkorea.domain.user;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.jobkorea.domain.resume.Resume;

@Mapper
public interface UserRepository {
	public int checkUsernameByUsername(String username);
	public int checkCompUsernameByCompUsername(String username);
	public int insertUser(User user);
	public int insertCompUser(Company company);

	public User getUserByUsername(String username);
	public User getUserByOAuth2Username(String oauth2_username);
	public Company getCompanyByUsername(String username);
	
	
	//accounts
	public int updateUserById(User user);
	public int updateUserDtlById(Resume resume);
	public int updatePasswordById(User user);
	
	// find
	// 아이디 찾기
	public int findPersonalIdByNameAndEmail(String name, String email);
	public int findCompanyIdByNameAndEmail(String name, String email);
	
	public String getPersonalIdByNameAndEmail(String name, String email);
	public String getCompanyIdByNameAndEmail(String name, String email);
	
	
	// 비밀번호 찾기
	public int findPersonalPwByNameAndUsername(String name, String username);
	public int replacePersonalPwByUsername(String password, String username);
	
	public int findCompanyPwByNameAndUsername(String name, String username);
	public int replaceCompanyPwByUsername(String password, String username);
	
}

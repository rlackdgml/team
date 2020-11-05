package com.biz.team.auth;




import java.util.ArrayList;
import java.util.List;

import org.springframework.security.authentication.AccountExpiredException;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import com.biz.team.controller.UserVO;

import lombok.extern.slf4j.Slf4j;

/*
 * spring security�� authentication-manager ���� ������
 * authentication-provider Ŭ���� Customizing �����ϱ�
 */
@Slf4j
public class AuthProviderImpl implements AuthenticationProvider{

	
	
	// spring security�� ���Ͽ� login�� ���������� ȣ��Ǵ� method
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		
		// �����ID�� �����ϱ�
		// String username = (String) authentication.getPrincipal();
	    //String username = authentication.getPrincipal().toString();
		 String username = authentication.getName();
		 
		 // username "admin" or "user1" or "guest"
		 boolean bUser = username.equals("admin");
		 bUser |= username.equals("user1");
		 bUser |= username.equals("guest");

		 // �����ID �˻�
		 if(!bUser) {
			 
			 String msg = String.format("[%s] ����� ID�� Ȯ���ϼ���" , username);
			 
			 /*
			  * throw new Exception(message)
			  * throw : ������ exception�� �߻��Ѷ� 
			  * 
			  * spring security login�� ���൵�߿� ������� �߻��� �ϸ�
			  * �޼����� ����� ������ exception�� �߻���Ű�� 
			  * spring security���� �޼����� �����ϴ� ȿ���� ��Ÿ����
			  * 
			  *  authenticate() method�� ������ ���߰� spring security�� �޼����� �����Ͽ� �ٽ� login ȭ���� ���� �޼����� �����ش�
			  */
			 
			 
			 throw new InternalAuthenticationServiceException(msg);
			 //throw new UsernameNotFoundException(msg);
			 
		 }
		 
		 // �α��� ��й�ȣ �����ϱ�
		 String password = authentication.getCredentials().toString();

		 if(!password.equals("1234")) {
			 throw new BadCredentialsException("��й�ȣ�� Ȯ���� �ּ���");
		 }
		 
		 UserVO userVO =new UserVO();
		 log.debug(userVO.toString());
		 
		 
		 if(!userVO.isEnabled()) {
			 throw new DisabledException("����������� ����Ҽ� �����ϴ�");
		 }
		 
		 if(!userVO.isAccountNonLocked()) {
			 throw new LockedException("����� ������ ����ֽ��ϴ� �����ڿ��� ���� �ϼ���");
			 
		 }
		 
		 if(!userVO.isAccountNonExpired()) {
			 throw new AccountExpiredException("����� ������ ���� �Ǿ����ϴ�");
		 }
		 
		 if(!userVO.isCredentialsNonExpired()) {
			 throw new BadCredentialsException("����� ������ ���ٱ����� �����ϴ�");
		 }
		 
		 // ROLE ���� �׽�Ʈ
		 // �����ID�� �ο��� ROLE List�� ���� �߰��ϰ�
		 // JSP��� ����غ���
		 
		 List<GrantedAuthority> authList = new ArrayList<>();
		 
		 if(username.equals("admin")) {
			 authList.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
		 }else if(username.equals("user1")) {
			 authList.add(new SimpleGrantedAuthority("ROLE_USER"));
		 }else{
			 authList.add(new SimpleGrantedAuthority("ROLE_GUEST"));
		 }
		 
		 
		 
		 
		 // �α��θ� ������ �ϰ� ROLE ���� �ΰ��������� ��� false�� ����� �����͸� �����ϰ� login���� �޽����� �����
		 UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(new UserVO(),null,authList);
		 
		return token;
	}
	
	// ���� ������� AuthProviderImpl�� spring security���� ��밡���ϵ��� ����
	// return���� true�� �Ͽ� ��밡���� ���·� ��ȯ
	@Override
	public boolean supports(Class<?> authentication) {
		
		return true;
	}
	
	

}
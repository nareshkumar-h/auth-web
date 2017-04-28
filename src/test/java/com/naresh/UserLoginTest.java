package com.naresh;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.naresh.model.User;
import com.naresh.service.UserService;


@RunWith(SpringRunner.class)
@SpringBootTest
public class UserLoginTest {

	@Autowired
	private UserService userService;
	
	/**
	 * User Data Setup:
	 * emailId : nareshkumarh@live.com, password= pass123, active =1
	 * emailId : jananise@gmail.com, password= pass123, active =0
	 */
	
	@Test
	public void testInvalidEmail() {
		
		try {
			userService.login("nareshkumarh@live.comm", "pass123");			
			Assert.fail();
		} catch (Exception e) {
			Assert.assertEquals("Email not found in our system", e.getMessage());			
		}
	}
	
	@Test
	public void testInvalidPassword() {
		
		try {
			userService.login("nareshkumarh@live.com", "pass123$");
			Assert.fail();
		} catch (Exception e) {
			Assert.assertEquals("Invalid Email/Password", e.getMessage());			
		}
	}

	@Test
	public void testValidEmailAndPassword() {
		
		try {
			User user = userService.login("nareshkumarh@live.com", "pass123");
			Assert.assertNotNull(user);
		} catch (Exception e) {
			Assert.fail();		
		}
	}
	
	@Test
	public void testValidEmailAndPasswordAndInactiveAccount() {
		
		try {
			userService.login("jananise@gmail.com", "pass123");
			Assert.fail();	
		} catch (Exception e) {
			Assert.assertEquals("Account is inactive", e.getMessage());
				
		}
	}

}

package com.naresh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naresh.exception.ActiveAccountException;
import com.naresh.exception.InActiveAccountException;
import com.naresh.exception.InvalidActivationCodeException;
import com.naresh.form.RegistrationForm;
import com.naresh.model.User;
import com.naresh.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	public User login(String email, String password) throws Exception {

		User user = userRepository.findByEmail(email);
		if (user == null) {
			throw new Exception("Email not found in our system");
		} else if (!user.getActive()) {
			throw new InActiveAccountException("Account is inactive");
		}

		else if ( !user.getPassword().equals(password)) {
			throw new Exception("Invalid Email/Password");
		}
		return user;
	}

	public User activateAccount(String email, String code) throws Exception {

		User user = userRepository.findByEmail(email);
		if (user == null) {
			throw new Exception("Invalid EmailId");
		} else if (user.getActive()) {
			throw new ActiveAccountException("Account is already Active");
		} else {
			user = userRepository.findByEmailAndCode(email, code);
			if (user == null) {
				throw new InvalidActivationCodeException("Invalid Activation Code");
			}

			user.setActive(true);
			userRepository.save(user);

		}

		return user;
	}

	public void register(RegistrationForm regUserForm) throws Exception {

		User user = userRepository.findByEmail(regUserForm.getEmail());
		System.out.println("Is email already exists? " + user);
		if (user != null) {
			throw new Exception("Email already exists!!!");
		}
		User userObj = new User();
		userObj.setName(regUserForm.getName());
		userObj.setEmail(regUserForm.getEmail());
		userObj.setPassword(regUserForm.getPassword());
		userObj.setActive(false);

		userRepository.save(userObj);

	}

	public List<User> findAll() {
		return userRepository.findAll();
	}

	public User findOne(Long id) {
		return userRepository.findOne(id);
	}

}

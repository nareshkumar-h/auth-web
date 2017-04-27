package com.naresh.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naresh.model.User;
import com.naresh.service.UserService;


@Controller
@RequestMapping("admin/users")
public class AdminUserController {

	
	@Autowired
	private UserService userService;

	@GetMapping
	public String list(HttpSession session) {
		List<User> users = userService.findAll();
		System.out.println(users);
		session.setAttribute("USERS_LIST", users);
	
		return "admin/users_list";
	}
}

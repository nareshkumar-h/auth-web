package com.naresh.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.naresh.exception.ActiveAccountException;
import com.naresh.exception.InActiveAccountException;
import com.naresh.exception.InvalidActivationCodeException;
import com.naresh.form.RegistrationForm;
import com.naresh.model.User;
import com.naresh.service.UserService;

@Controller
@RequestMapping("auth")
public class AuthController {

	private static final Logger LOGGER = Logger.getLogger(AuthController.class);

	@Autowired
	private UserService userService;

	@PostMapping("/login")
	public String login(@RequestParam("emailId") String emailId, @RequestParam("password") String password,
			ModelMap modelMap, HttpSession session) {
		LOGGER.info("Entering Login " + emailId + "-" + password);
		LOGGER.debug(new Object[] { emailId, password });

		User user = null;
		try {
			user = userService.login(emailId, password);
			LOGGER.info("User:" + user);
			if (user != null) {
				session.setAttribute("LOGGED_IN_USER", user);
				LOGGER.info("Login Success");
				return "redirect:../admin";
			} else {
				modelMap.addAttribute("EMAIL" , emailId );
				modelMap.addAttribute("ERROR_MESSAGE", "Invalid Email Id/Password");
				LOGGER.error("Login Failure");
				return "user/login";
			}
		} catch (InActiveAccountException e) {
			return "user/activation_pending";
		} catch (Exception e) {
			modelMap.addAttribute("EMAIL" , emailId );
			modelMap.addAttribute("ERROR_MESSAGE", e.getMessage());
			return "user/login";
		}

	}

	@PostMapping("/activate")
	public String activateAccount(@RequestParam("emailId") String emailId, @RequestParam("activation_code") String code,
			ModelMap modelMap, HttpSession session) {
		LOGGER.info("Entering Login " + emailId + "-" + code);
		LOGGER.debug(new Object[] { emailId, code });

		User user = null;
		try {
			user = userService.activateAccount(emailId, code);
			LOGGER.info("User:" + user);
			if (user != null) {
				return "user/activation_complete";
			} else {
				modelMap.addAttribute("ERROR_MESSAGE", "Invalid EmailId/Activation Code");
				LOGGER.error("Login Failure");

				return "user/activate_account";
			}
		} catch (ActiveAccountException e) {
			return "user/activation_active";
			
		} catch (InvalidActivationCodeException e) {
			modelMap.addAttribute("ERROR_MESSAGE", e.getMessage());
			return "user/activate_account";
		}

		catch (Exception e) {

			modelMap.addAttribute("ERROR_MESSAGE", e.getMessage());
			return "user/activate_account";
		}

	}

	@GetMapping("/login")
	public String login() {
		return "user/login";
	}

	@GetMapping("/register")
	public String showRegsiter() {
		return "user/register";
	}

	@GetMapping("/activate")
	public String activateAccountPage() {
		return "user/activate_account";
	}

	@PostMapping("/register")
	public String register(@ModelAttribute @Valid RegistrationForm user, BindingResult result, ModelMap modelMap,
			HttpSession session) throws Exception {
		try {

			System.out.println("Registraion Form :" + user);

			if (result.hasErrors()) {
				modelMap.addAttribute("errors", result.getAllErrors());
				modelMap.addAttribute("regFormData", user);
				return "user/register";
			} else {
				userService.register(user);
				modelMap.addAttribute("EMAIL", user.getEmail());

				return "user/registration_complete";
			}

		} catch (Exception e) {
			e.printStackTrace();
			modelMap.addAttribute("regFormData", user);
			modelMap.addAttribute("ERROR_MESSAGE", e.getMessage());
			return "user/register";
		}

	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
}

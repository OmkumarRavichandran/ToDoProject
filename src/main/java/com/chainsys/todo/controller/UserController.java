package com.chainsys.todo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.todo.model.User;
import com.chainsys.todo.service.UserService;

@Controller
@RequestMapping("/User1")
public class UserController {

	@Autowired
	UserService userService;
	@GetMapping("/list")
	public String getAllUsers(Model model) {
		List<User> uselist = userService.getAllUsers();
		model.addAttribute("alluser",uselist);
		return "list-users";
	}
	@GetMapping("/adduser")
	public String showAddUser(Model model) {
		User user = new User();
		model.addAttribute("adduser", user);
		return "add-user-form";
	}
	@PostMapping("/add")
	public String addUser(@ModelAttribute("adduser")User user) {
		userService.save(user);
		return "redirect:/User1/list";
	}
	@GetMapping("/getuserid")
	public String getUserById(@RequestParam("id") int id,Model model) {
		User theuser = userService.getById(id);
		model.addAttribute("getuser",theuser);
		return "find-user-id";
	}
}

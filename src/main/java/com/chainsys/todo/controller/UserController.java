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

import com.chainsys.todo.model.Task;
import com.chainsys.todo.model.User;
import com.chainsys.todo.model.UserTaskDTO;
import com.chainsys.todo.service.UserService;

@Controller
@RequestMapping("/")
public class UserController {

	@Autowired
	UserService userService;
	
	@GetMapping("/todo")
    public String webApp(Model m) {
        String message = "Hello World, Created the website on this Mr. @ Omkumar";
        m.addAttribute("message", message);
        return "index";
    }	
	@GetMapping("/index")
    public String webAppp(Model m) {
        String message = "Hello World, Created the website on this Mr. @ Omkumar";
        m.addAttribute("message", message);
        return "index2";
    }
	
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
		return "redirect:/user/list";
	}
	@GetMapping("/getuserid")
	public String getUserById(@RequestParam("id") int id,Model model) {
		User theuser = userService.getById(id);
		model.addAttribute("getuser",theuser);
		return "find-user-id";
	}
	@GetMapping("/updateuser")
	public String showUpdateForm(Model model,@RequestParam("userid")int id) {
		User user = userService.getById(id);
		model.addAttribute("updateuser",user);
		return "update-user-form";
	}
	@PostMapping("/update")
	public String updateUser(@ModelAttribute("updateuser")User user) {
		userService.save(user);
		return "redirect:/user/list";
	}
	@GetMapping("/getusertask")
	public String getUserTask(@RequestParam("id")int id,Model model) {
		UserTaskDTO userTask = userService.getUserTask(id);
		model.addAttribute("getuser",userTask.getUser());
		model.addAttribute("tasklist",userTask.getTaskList());
		return "list-user-task";
	}
	@GetMapping("/userlogin")
    public String adminaccessform(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "user-login";
    }                   

    @PostMapping("/checkuserlogin")
    public String checkingAccess(@ModelAttribute("user") User use) {
    	User user = userService.getnamepassword(use.getName(), use.getPassword());
        if (user!= null){

            return "redirect:/index";
        } else
            return "invalid-user-error";
    }
}

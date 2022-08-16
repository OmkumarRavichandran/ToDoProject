package com.chainsys.todo.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.todo.dto.UserTaskDTO;
import com.chainsys.todo.model.Comments;
import com.chainsys.todo.model.Task;
import com.chainsys.todo.model.User;
import com.chainsys.todo.service.TaskService;
import com.chainsys.todo.service.UserService;

@Controller
@RequestMapping("/")
public class UserController {
	@Autowired
	UserService userService;
	@Autowired
	TaskService taskService;
	
	@GetMapping("/index")
    public String webAppp(Model model) {
		List<Task> tasklist = taskService.getallTask();
		
		model.addAttribute("alltask",tasklist);
		return "home"; 
    }
	@GetMapping("/userindex")
    public String userIndex(Model m) {
		String message = "Hi";
        m.addAttribute("message", message);
        return "userindex";
    }
	@GetMapping("/contactindex")
    public String contactIndex(Model m) {
		String message = "Hi";
        m.addAttribute("message", message);
        return "contactindex";
    }
	@GetMapping("/taskindex")
    public String taskIndex(Model m) {
		String message = "Hi";
        m.addAttribute("message", message);
        return "taskindex";
    }
	@GetMapping("/commentindex")
    public String commentIndex(Model m) {
		String message = "Hi";
        m.addAttribute("message", message);
        return "commentindex";
    }
	@GetMapping("/taskstatusindex")
    public String taskstatusIndex(Model m) {
		String message = "Hi";
        m.addAttribute("message", message);
        return "taskstatus";
    }
	
	@GetMapping("/userlist")
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
	public String addUser(@Valid @ModelAttribute("adduser")User user,Errors errors) {
		if(errors.hasErrors()) {
			return "add-user-form";
		}
		user = userService.save(user);
		return "redirect:/todo";
	}
	@GetMapping("/getuserform")
	public String getUserForm() {
		return "get-user-form";
	}
	@GetMapping("/getuserid")
	public String getUserById(@RequestParam("id") int id,Model model) {
		User theuser = userService.getById(id);
		model.addAttribute("getuser",theuser);
		return "find-user-id";
	}
	@GetMapping("/usermodifyform")
	public String showUserModifyForm() {
		return "user-modify-form";
	}
	@GetMapping("/updateuser")
	public String showUpdateForm(Model model,@RequestParam("userid")int id) {
		User user = userService.getById(id);
		model.addAttribute("updateuser",user);
		return "update-user-form";
	}
	@PostMapping("/update")
	public String updateUser(@ModelAttribute("updateuser")User user,Errors errors) {
		if(errors.hasErrors()) {
			return "add-staff-form";
		}
		userService.save(user);
		return "redirect:/userlist";
	}
	@GetMapping("/deleteuserform")
	public String deleteUserForm() {
		return "delete-user-form";
	}
	@GetMapping("/deleteuser")
	public String deleteUser(@RequestParam("userid")int id) {
		userService.deleteById(id);
		return "redirect:/userlist";
	}
	@GetMapping("/getusertaskform")
	public String getUserTask() {
		return "get-user-task";
	}
	
	@GetMapping("/getusertask")
	public String getUserTask(@RequestParam("id")int id,Model model) {
		UserTaskDTO userTask = userService.getUserTask(id);
		model.addAttribute("getuser",userTask.getUser());
		model.addAttribute("tasklist",userTask.getTaskList());
		return "list-user-task";
	}
	@GetMapping("/todo")
    public String adminaccessform(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "userlogin";
    }                   

    @PostMapping("/checkuserlogin")
    public String checkingAccess(@ModelAttribute("user") User use,Model model) {
    	User user = userService.getnamepassword(use.getName(), use.getPassword());
        if (user!= null){

            return "redirect:/index";
        } else {
        	model.addAttribute("result","Invalid UserName and Passoword");
        }
            return "userlogin";
    }
}

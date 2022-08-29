package com.chainsys.todo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	@SuppressWarnings("unused")
	private static final String ADDUSER = "add-user-form"; 
	
	public static final String USERID ="userId";
	
	
	@GetMapping("/index")
    public String webAppp(HttpServletRequest request, Model model,User use) {
		HttpSession session = request.getSession();
		int userId=(int)session.getAttribute("userId");
		List<Task> tasklist = taskService.findByuserId(userId);
		model.addAttribute("alltask",tasklist);
		return "home"; 
    }
	@GetMapping("/getusertask")
	public String getUserTask(@RequestParam("userid")int id,Model model,HttpServletRequest request) {
		User user = new User();
		UserTaskDTO userTask = userService.getUserTask(id);
		HttpSession session = request.getSession();
		int userId=(int)session.getAttribute("userId");
		user.setUserId(userId);
		model.addAttribute("getuser",userTask.getUser());
		model.addAttribute("tasklist",userTask.getTaskList());
		return "list-user-task";
	}
	@GetMapping("/userindex")
    public String userIndex(Model m) {
        return "userindex";
    }
	@GetMapping("/taskindex")
    public String taskIndex(Model m) {
        return "taskindex";
    }
	@GetMapping("/commentindex")
    public String commentIndex(Model m) {
        return "commentindex";
    }
	@GetMapping("/taskstatusindex")
    public String taskstatusIndex(Model m) {
        return "taskstatus";
    }
	@GetMapping("/about")
    public String about(Model m) {
        return "about";
    }
	
	@GetMapping("/userlist")
	public String getAllUsers(Model model) {
		List<User> uselist = userService.getAllUsers();
		model.addAttribute("alluser",uselist);
		return "list-users";
	}

	@GetMapping("/getuserid")
	public String getUserById(@RequestParam("userId")int id,Model model,HttpServletRequest request) {
		User theuser = userService.getById(id);
		model.addAttribute("getuser",theuser);
		HttpSession session = request.getSession();
		int userId=(int)session.getAttribute("userId");
		theuser.setUserId(userId);
//		if(theuser!=null) {
		return "find-user-id";
//		}
//		else {
//			model.addAttribute("message","ID Not Found");
//		}
//		return "get-user-form";
	}
	@GetMapping("/usermodifyform")
	public String showUserModifyForm() {
		return "user-modify-form";
	}
	@GetMapping("/adduser")
	public String showAddUser(Model model) {
		User user = new User();
		model.addAttribute("adduser", user);
		return ADDUSER;
	}
	@PostMapping("/add")
	public String addUser(@ModelAttribute("adduser")User user,Errors errors,Model model) {
		try {
				userService.save(user);
				model.addAttribute("result","Registration completed Successfully");
				return ADDUSER;
			}
			catch(Exception er) {
				model.addAttribute("Error","Already Exists");
				return ADDUSER;
			}
	}

	@GetMapping("/updateuser")
	public String showUpdateForm(Model model,@RequestParam("userid")int id,HttpServletRequest request) {
		User user = userService.getById(id);
		HttpSession session = request.getSession();
		int userId=(int)session.getAttribute("userId");
		user.setUserId(userId);
		model.addAttribute("updateuser",user);
		return "update-user-form";
	}
	@PostMapping("/update")
	public String updateUser(@ModelAttribute("updateuser")User user,Errors errors,Model model) {
		try {
			userService.save(user);
			model.addAttribute("result","Update completed Successfully");
			return "update-user-form";
		}
		catch(Exception er) {
			model.addAttribute("message","This Name is already exist");
			return "update-user-form";
		}
	}
	@GetMapping("/getusertaskform")
	public String getUserTask() {
		return "get-user-task";
	}
	
	
	@GetMapping("/todo")
    public String adminaccessform(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "userlogin";
    }                   

    @PostMapping("/checkuserlogin")
    public String checkingAccess(@ModelAttribute("user") User use,Model model,HttpSession session) {
    	User user = userService.getnamepassword(use.getName(), use.getPassword());
    	try {
        if (user!= null){
        	session.setAttribute("userId", user.getUserId());
        	System.out.println(user.getUserId());
        	
            return "redirect:/index";       
        } else {
        	model.addAttribute("result","Invalid UserName and Password");	
        }
    	}
    	catch(Exception e) {
    		model.addAttribute("error",e.getMessage());
    	}  
    	return "userlogin";
    }
}

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

import com.chainsys.todo.pojo.Task;
import com.chainsys.todo.pojo.User;
import com.chainsys.todo.service.TaskService;

@Controller
@RequestMapping("/task")
public class TaskController {
	@Autowired
	TaskService tservice;

	@GetMapping("/list")
	public String getAllUsers(Model model) {
		List<Task> tasklist = tservice.getallTask();
		model.addAttribute("alltask",tasklist);
		return "list-task";
	}
	@GetMapping("/addtask")
	public String showAddForm(Model model) {
		Task task = new Task();
		model.addAttribute("addtask", task);
		return "add-task-form";
	}
	@PostMapping("/add")
	public String save(@ModelAttribute("addtask")Task task) {
		tservice.save(task);
		return "redirect:/task/list";
	}
	@GetMapping("/getuserid")
	public String getUserById(@RequestParam("taskid") int id,Model model) {
		Task theuser = tservice.findById(id);
		model.addAttribute("gettask",theuser);
		return "find-task-id";
	}
	@GetMapping("/deletetask")
	public String deleteTask(@RequestParam("userid")int id) {
		tservice.deleteById(id);
		return "redirect:/task/list";
	}
	@GetMapping("/updatetask")
	public String showUpdateForm(Model model,@RequestParam("taskid")int id) {
		Task theDoc = tservice.findById(id);
		model.addAttribute("updatetask",theDoc);
		return "update-task-form";
	}
	@PostMapping("/update")
	public String updateTask(@ModelAttribute("updatetask")Task theDoc) {
		tservice.save(theDoc);
		return "redirect:/task/list";
	}

}

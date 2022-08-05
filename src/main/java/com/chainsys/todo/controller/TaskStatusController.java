package com.chainsys.todo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.todo.model.Task;
import com.chainsys.todo.model.TaskStatus;
import com.chainsys.todo.service.TaskService;
import com.chainsys.todo.service.TaskStatusService;

@Controller
@RequestMapping("/taskstatus")
public class TaskStatusController {
	
	@Autowired
	TaskService taskService;
	
	@GetMapping("/list")
	public String getAllUsers(Model model) {
		List<Task> tasklist = taskService.getallTask();
		model.addAttribute("alltask",tasklist);
		return "list-task";
	}
}

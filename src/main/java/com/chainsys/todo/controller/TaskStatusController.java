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
import com.chainsys.todo.service.TaskStatusService;

@Controller
@RequestMapping("/taskstatus")
public class TaskStatusController {
	
	@Autowired
	TaskStatusService taskStatusService;
	
	@GetMapping("/getuserid")
	public String getUserById(@RequestParam("taskid") int id,Model model) {
		TaskStatus theuser = taskStatusService.getAllTask(id);
		model.addAttribute("gettask",theuser);
		return "find-task-id";
	}
}

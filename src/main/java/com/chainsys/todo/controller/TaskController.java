package com.chainsys.todo.controller;

import java.time.LocalDate;
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

import com.chainsys.todo.dto.TaskCommentDTO;
import com.chainsys.todo.model.Task;
import com.chainsys.todo.service.TaskService;

@Controller
@RequestMapping("/task")
public class TaskController {
	@Autowired
	TaskService taskService;

	private static final String LIST = "list-task"; 
	
	private static final String TASKLIST = "redirect:/task/list"; 
	
	@GetMapping("/list")
	public String getAllUsers(Model model) {
		List<Task> tasklist = taskService.getallTask();
		model.addAttribute("alltask", tasklist);
		return LIST;
	}

	@GetMapping("/status")
	public String getAllStatus(Model model) {
		List<Task> taskStatus = taskService.taskGetByStatus("done");
		model.addAttribute("alltask", taskStatus);
		return LIST;
	}
	
	@GetMapping("/highpriority")
	public String getAllPriority(Model model) {
		List<Task> taskPriority = taskService.taskGetByPriority("High");
		model.addAttribute("alltask", taskPriority);
		return LIST;
	}
	@GetMapping("/mediumpriority")
	public String getAllMediumPriority(Model model) {
		List<Task> taskPriority = taskService.taskGetByPriority("Medium");
		model.addAttribute("alltask", taskPriority);
		return LIST;
	}
	@GetMapping("/lowpriority")
	public String getAllLowPriority(Model model) {
		List<Task> taskPriority = taskService.taskGetByPriority("Low");
		model.addAttribute("alltask", taskPriority);
		return LIST;
	}
	
	@GetMapping("/addtask")
	public String showAddForm(Model model) {
		Task task = new Task();
		model.addAttribute("addtask", task);
		return "add-task-form";
	}

	@PostMapping("/add")
	public String save(@Valid@ModelAttribute("addtask") Task task, Errors errors) {
		if (errors.hasErrors()) {
			return "add-task-form";
		}
		task.setDateCreated();
		taskService.save(task);
		return TASKLIST;
	}

	@GetMapping("/getTask")
	public String getTaskForm() {
		return "get-task-form";
	}

	@GetMapping("/getTaskid")
	public String getTaskById(@RequestParam("taskid") int id, Model model) {
		Task thetask = taskService.findById(id);
		int remainingDays = thetask.getDueDate().toLocalDate().minusDays(LocalDate.now().getDayOfMonth())
				.getDayOfMonth();
		thetask.setRemainingDays(remainingDays);
		model.addAttribute("gettask", thetask);
		return "find-task-id";
	}

	@GetMapping("/deleteTask")
	public String getDeleteTaskForm() {
		return "delete-task-form";
	}

	@GetMapping("/deletetask")
	public String deleteTask(@RequestParam("taskid") int id) {
		taskService.deleteById(id);
		return TASKLIST;
	}

	@GetMapping("/updateTask")
	public String getupdateTaskForm() {
		return "modify-task-form";
	}

	@GetMapping("/updatetask")
	public String showUpdateForm(Model model, @RequestParam("taskid") int id) {
		Task theDoc = taskService.findById(id);
		model.addAttribute("updatetask", theDoc);
		return "update-task-form";
	}

	@PostMapping("/update")
	public String updateTask(@ModelAttribute("updatetask") Task task, Errors errors) {
		if (errors.hasErrors()) {
			return "update-task-form";
		}
		task.setDateCreated();
		taskService.save(task);
		return TASKLIST;
	}

	@GetMapping("/getTaskcomments")
	public String getTaskcomment() {
		return "get-comment-task";
	}

	@GetMapping("/gettaskcomment")
	public String getComments(@RequestParam("id") int id, Model model) {
		TaskCommentDTO dto = taskService.getTaskComment(id);
		model.addAttribute("gettask", dto.getTask());
		model.addAttribute("commentlist", dto.getCommentlist());
		return "list-task-comment";
	}
}

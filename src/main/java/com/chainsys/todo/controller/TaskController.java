package com.chainsys.todo.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.todo.model.Comments;
import com.chainsys.todo.model.Task;
import com.chainsys.todo.model.TaskCommentDTO;
import com.chainsys.todo.model.User;
import com.chainsys.todo.service.CommentService;
import com.chainsys.todo.service.TaskService;

@Controller
@RequestMapping("/task")
public class TaskController {
	@Autowired
	TaskService taskService;

	@GetMapping("/list")
	public String getAllUsers(Model model) {
		List<Task> tasklist = taskService.getallTask();
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
		task.setDateCreated();
		taskService.save(task);
		return "redirect:/task/list";
	}
	@GetMapping("/getuserid")
	public String getUserById(@RequestParam("taskid") int id,Model model) {
		Task theuser = taskService.findById(id);
		model.addAttribute("gettask",theuser);
		return "find-task-id";
	}
	@GetMapping("/deletetask")
	public String deleteTask(@RequestParam("taskid")int id) {
		taskService.deleteById(id);
		return "redirect:/task/list";
	}
	@GetMapping("/updatetask")
	public String showUpdateForm(Model model,@RequestParam("taskid")int id) {
		Task theDoc = taskService.findById(id);
		model.addAttribute("updatetask",theDoc);
		return "update-task-form";
	}
	@PostMapping("/update")
	public String updateTask(@ModelAttribute("updatetask")Task theDoc) {
		taskService.save(theDoc);
		return "redirect:/task/list";
	}
	@GetMapping("/gettaskcomment")
	public String getComments(@RequestParam("id") int id,Model model) {
		TaskCommentDTO dto = taskService.getTaskComment(id);
		model.addAttribute("gettask",dto.getTask());
		model.addAttribute("commentlist",dto.getCommentlist());
		return "list-task-comment";
	}

//	@GetMapping("/trans")
//	public void taskAndComment(@RequestParam("id") int id) {
//		TaskCommentDTO dto = new TaskCommentDTO();
//		Task task = new Task();
//		task.setTaskId(id);
//		task.setTaskTitle("Good");
//		task.setDescription("Excellent");
//		Date dt = new Date(92,7,14);
//		task.setDateCreated();
//		task.setDateModified(dt);
//		task.setDateCompleted(dt);
//		dto.setTask(task);
//		List<Comments> commentlist = new ArrayList<Comments>();
//		for(int i=id+10;i<id+104;i++) {
//			Comments comment = new Comments();
//			comment.setTaskId(id);
//			comment.setCommentId(i);
//			comment.setComments("Excellent");
//			dto.addComment(comment);
//		}
//		taskService.addTaskComment(dto);
//		System.out.println("Successfully completed");
//	}

}

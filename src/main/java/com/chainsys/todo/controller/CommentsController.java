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

import com.chainsys.todo.model.Comments;
import com.chainsys.todo.model.Task;
import com.chainsys.todo.service.CommentService;
import com.chainsys.todo.service.TaskService;

@Controller
@RequestMapping("/comment")
public class CommentsController {
	@Autowired
	CommentService commentService;

	@Autowired
	TaskService taskService;  
	
	@GetMapping("/list")
	public String getAllUsers(Model model) {
		List<Comments> commentlist = commentService.getAllComments();
		model.addAttribute("allcomment", commentlist);
		return "list-comment";
	}
	@GetMapping("/addcomment")
	public String showAddForm(HttpServletRequest request, Model model) {
		HttpSession session= request.getSession();
		int userId=(int)session.getAttribute("userId");
		List<Task> listTask = taskService.findDropDownTaskID(userId);
		model.addAttribute("listOfTaskID",listTask);
		Comments comment = new Comments();
		model.addAttribute("addcomment", comment);
		return "add-comment-form";
	}
	@PostMapping("/add")
	public String save( @ModelAttribute("addcomment")Comments comment,Errors errors) {
		if(errors.hasErrors()) {
			return "add-comment-form";
		}
		comment.setDatetime();
		commentService.save(comment);
		return "redirect:/comment/list";
	}
	@GetMapping("/deletecomment")
	public String deleteTask(@RequestParam("id")int id) {
		commentService.deleteById(id);
		return "redirect:/comment/list";
	}
}

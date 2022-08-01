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

import com.chainsys.todo.pojo.Comments;
import com.chainsys.todo.service.CommentService;

@Controller
@RequestMapping("/comment")
public class CommentsController {
	@Autowired
	CommentService cservice;

	@GetMapping("/list")
	public String getAllUsers(Model model) {
		List<Comments> commentlist = cservice.getAllComments();
		model.addAttribute("allcomment", commentlist);
		return "list-comment";
	}
	@GetMapping("/addcomment")
	public String showAddForm(Model model) {
		Comments com = new Comments();
		model.addAttribute("addcomment", com);
		return "add-comment-form";
	}
	@PostMapping("/add")
	public String save(@ModelAttribute("addcomment")Comments com) {
		cservice.save(com);
		return "redirect:/comment/list";
	}
	@GetMapping("/deletecomment")
	public String deleteTask(@RequestParam("id")int id) {
		cservice.deleteById(id);
		return "redirect:/comment/list";
	}
}
package com.chainsys.todo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.todo.model.Comments;
import com.chainsys.todo.repository.CommentRepository;

@Service
public class CommentService {
	@Autowired
	private CommentRepository commentRepository;

	public Comments save(Comments commentService) {
		return commentRepository.save(commentService);
	}
	public void deleteById(int id) {
		commentRepository.deleteById(id);
	}
	public List<Comments> getAllComments(){
		List<Comments> listComments =commentRepository.findAll();
		return listComments;
	}
	public Comments findById(int id) {
		return commentRepository.findById(id);
	}
}

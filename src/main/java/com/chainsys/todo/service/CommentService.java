package com.chainsys.todo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.todo.pojo.Comments;
import com.chainsys.todo.repository.CommentRepository;

@Service
public class CommentService {
	@Autowired
	private CommentRepository repo;

	public Comments save(Comments cs) {
		return repo.save(cs);
	}
	public void deleteById(int id) {
		repo.deleteById(id);
	}
	public List<Comments> getAllComments(){
		List<Comments> listco =repo.findAll();
		return listco;
	}
	public Comments findById(int id) {
		return repo.findById(id);
	}
}

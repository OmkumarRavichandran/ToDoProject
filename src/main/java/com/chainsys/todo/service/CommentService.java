package com.chainsys.todo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.todo.pojo.Comments;
import com.chainsys.todo.repository.CommentRepository;

@Service
public class CommentService {
	@Autowired
	private CommentRepository commentrepo;

	public Comments save(Comments cs) {
		return commentrepo.save(cs);
	}
	public void deleteById(int id) {
		commentrepo.deleteById(id);
	}
	public List<Comments> getAllComments(){
		List<Comments> listco =commentrepo.findAll();
		return listco;
	}
	public Comments findById(int id) {
		return commentrepo.findById(id);
	}
}

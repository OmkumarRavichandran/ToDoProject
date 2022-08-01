package com.chainsys.todo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.todo.pojo.User;
import com.chainsys.todo.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository repo;

	public User save(User us) {
		return repo.save(us);
	}
	public User getById(int id) {
		return repo.findById(id);
	}
	public List<User> getAllUsers(){
		List<User> listus =repo.findAll();
		return listus;
	}
}

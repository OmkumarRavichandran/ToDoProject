package com.chainsys.todo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.todo.model.User;
import com.chainsys.todo.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;

	public User save(User us) {
		return userRepository.save(us);
	}
	public User getById(int id) {
		return userRepository.findById(id);
	}
	public List<User> getAllUsers(){
		List<User> listus =userRepository.findAll();
		return listus;
	}
}

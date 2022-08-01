package com.chainsys.todo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.todo.pojo.User;
import com.chainsys.todo.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userrepo;

	public User save(User us) {
		return userrepo.save(us);
	}
	public User getById(int id) {
		return userrepo.findById(id);
	}
	public List<User> getAllUsers(){
		List<User> listus =userrepo.findAll();
		return listus;
	}
}

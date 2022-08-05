package com.chainsys.todo.repository;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.todo.model.User;

public interface UserRepository extends CrudRepository<User, Integer>{

	User findById(int id);
	User save(User user);
	List<User> findAll();
	User findByNameAndPassword(String name , String password);
	
}

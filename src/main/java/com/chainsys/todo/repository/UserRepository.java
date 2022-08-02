package com.chainsys.todo.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.todo.model.User;

public interface UserRepository extends CrudRepository<User, Integer>{

	User findById(int id);
	User save(User tr);
	List<User> findAll();
}

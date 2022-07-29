package com.chainsys.todo.repository;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.todo.pojo.User;

public interface UserRepository extends CrudRepository<User, Integer>{

	User getbyId(int id);
	User addUser(User tr);
}

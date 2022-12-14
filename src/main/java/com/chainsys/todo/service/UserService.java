package com.chainsys.todo.service;

import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.todo.dto.UserTaskDTO;
import com.chainsys.todo.model.Task;
import com.chainsys.todo.model.User;
import com.chainsys.todo.repository.TaskRepository;
import com.chainsys.todo.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private TaskRepository taskRepository;

	public User save(User us) {
		return userRepository.save(us);
	}
	public User getById(int id) {
		return userRepository.findById(id);
	}
	public List<User> getAllUsers(){
		return userRepository.findAll();
	}
	public User getnamepassword(String name,String password) {
		return userRepository.findByNameAndPassword(name, password);
	}
	public void deleteById(int id) {
		userRepository.deleteById(id);
	}
	@Transactional
	public UserTaskDTO getUserTask(int id) {
		User user = getById(id);
		UserTaskDTO userTask = new UserTaskDTO();
		userTask.setUser(user);
		List<Task> task = taskRepository.findByUserId(id);
		Iterator<Task> iterator = task.iterator();
		while(iterator.hasNext()) {
			userTask.addTask(iterator.next());
		}
		return userTask;
	}
}

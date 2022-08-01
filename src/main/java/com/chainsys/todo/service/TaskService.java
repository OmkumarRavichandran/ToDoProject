package com.chainsys.todo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.todo.pojo.Task;
import com.chainsys.todo.repository.TaskRepository;

@Service
public class TaskService {
	@Autowired
	private TaskRepository repo;

	public Task findById(int id) {
		return repo.findById(id);
	}

	public Task save(Task tr) {
		return repo.save(tr);
	}

	public List<Task> getallTask() {
		List<Task> listTa = repo.findAll();
		return listTa;
	}

	public void deleteById(int id) {
		repo.deleteById(id);
	}
}

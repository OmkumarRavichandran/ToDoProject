package com.chainsys.todo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.chainsys.todo.pojo.Task;
import com.chainsys.todo.repository.TaskRepository;

@RestController
public class TaskService {
	@Autowired
	private TaskRepository repo;

	@GetMapping("/getTask")
	public Task getTask(int id) {
		return repo.findbyId(id);
	}
	@PostMapping(value="/newtask",consumes="application/json")
	public String addTask(@RequestBody Task tr) {
		repo.save(tr);
		return "redirect:getalltask";
	}
	@GetMapping("/getalltask")
	public List<Task>getallTask(){
		return repo.findAllTask();
	}
	@PostMapping(value="/modifytask",consumes="application/json")
	public String modifyTask(@RequestBody Task tr) {
		repo.save(tr);
		return "redirect:/getalltask";
	}
}

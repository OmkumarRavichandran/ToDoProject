package com.chainsys.todo.repository;

import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.todo.model.Task;
@Repository
public interface TaskRepository extends CrudRepository<Task, Integer>{
	
	Task findById(int id);
	Task save (Task task);
	Task deleteById(int taskId);
	List<Task> findAll();
	List<Task> findByUserId(int id);
	@Query("SELECT * FROM Task where status=done")
	public List<Task> getTaskIdByStatus(String status);
	
}

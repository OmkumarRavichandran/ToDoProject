package com.chainsys.todo.service;

import java.util.Iterator;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.todo.dto.TaskCommentDTO;
import com.chainsys.todo.model.Comments;
import com.chainsys.todo.model.Task;
import com.chainsys.todo.repository.CommentRepository;
import com.chainsys.todo.repository.TaskRepository;
@Service
public class TaskService {
	@Autowired
	private TaskRepository taskRepository;
	@Autowired
	private CommentRepository commentRepository;

	public List<Task> taskGetByStatus(String status,int userId){
		return taskRepository.findByStatusAndUserId(status,userId);
	}
	
	public List<Task> taskGetByPriority(String priority,int userId){
		return taskRepository.findByPriorityAndUserId(priority,userId);
	}

	public Task findById(int id) {
		return taskRepository.findById(id);
	}
 
	public Task save(Task task) {
		return taskRepository.save(task);
	}

	public List<Task> getallTask(int id) {
		return taskRepository.findByUserId(id);
	}

	public void deleteById(int id) {
		taskRepository.deleteById(id);
	}
	public List<Task> findByuserId(int id) {
		return taskRepository.findByUserId(id);
	}
	
	public TaskCommentDTO getTaskComment(int id) {
		Task task =findById(id);
		TaskCommentDTO dto = new TaskCommentDTO();
		dto.setTask(task);
		List<Comments> comment = commentRepository.findByTaskId(id);
		Iterator<Comments> iterator =comment.iterator();
		while(iterator.hasNext()) {
			dto.addComment(iterator.next());
		}
		return dto;
	}
	@Transactional
	public void addTaskComment(TaskCommentDTO dto) {
		Task task = dto.getTask();
		save(task);
		List<Comments> commentList = dto.getCommentlist();
		int count = commentList.size();
		for(int i=0;i<count;i++) {
			commentRepository.save(commentList.get(i));
		}
	}
	public List<Task> findDropDownTaskID(int taskId){
		return taskRepository.findByUserId(taskId);
	}
}

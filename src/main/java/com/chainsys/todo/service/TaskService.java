package com.chainsys.todo.service;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.todo.model.Comments;
import com.chainsys.todo.model.Task;
import com.chainsys.todo.model.TaskCommentDTO;
import com.chainsys.todo.model.TaskStatus;
import com.chainsys.todo.model.TaskStatusDTO;
import com.chainsys.todo.model.User;
import com.chainsys.todo.repository.CommentRepository;
import com.chainsys.todo.repository.TaskRepository;
import com.chainsys.todo.repository.TaskstatusRepository;

import net.bytebuddy.asm.Advice.OffsetMapping.Sort;

@Service
public class TaskService {
	@Autowired
	private TaskRepository taskRepository;
	@Autowired
	private CommentRepository commentRepository;
@Autowired
private TaskstatusRepository taskstatusRepository; 
	public Task findById(int id) {
		return taskRepository.findById(id);
	}
 
	public Task save(Task task) {
		return taskRepository.save(task);
	}

	public List<Task> getallTask() {
		List<Task> listTask = taskRepository.findAll();
		return listTask;
	}

	public void deleteById(int id) {
		taskRepository.deleteById(id);
	}
	
	public TaskCommentDTO getTaskComment(int id) {
		Task task =findById(id);
		TaskCommentDTO dto = new TaskCommentDTO();
		dto.setTask(task);
		List<Comments> comment = commentRepository.findByTaskId(id);
		Iterator<Comments> iterator =comment.iterator();
		while(iterator.hasNext()) {
			dto.addComment((Comments)iterator.next());
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
	@Transactional
	public TaskStatusDTO getTaskAndAddedTask(int id) {
		Task task = findById(id);
		TaskStatusDTO taskStatusDTO = new TaskStatusDTO();
		taskStatusDTO.setTask(task);
		List<TaskStatus> taskStatus = taskstatusRepository.findByTaskId(id);
		Iterator<TaskStatus> iterator =taskStatus.iterator();
		while(iterator.hasNext()) {
			taskStatusDTO.addTaskStatus((TaskStatus)iterator.next());
		}
		return taskStatusDTO;
		
	}
}

package com.chainsys.todo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.todo.model.Comments;
import com.chainsys.todo.model.Task;
import com.chainsys.todo.model.TaskCommentDTO;
import com.chainsys.todo.repository.CommentRepository;
import com.chainsys.todo.repository.TaskRepository;

@Service
public class TaskService {
	@Autowired
	private TaskRepository taskRepository;
	@Autowired
	private CommentRepository commentRepository;

	public Task findById(int id) {
		return taskRepository.findById(id);
	}

	public Task save(Task tr) {
		return taskRepository.save(tr);
	}

	public List<Task> getallTask() {
		List<Task> listTa = taskRepository.findAll();
		return listTa;
	}

	public void deleteById(int id) {
		taskRepository.deleteById(id);
	}
	public TaskCommentDTO getTaskComment(int id) {
		Task task =findById(id);
		TaskCommentDTO dto = new TaskCommentDTO();
		dto.setTask(task);
		int i=1;
//		for(int i=0;i<5;i++) {
			Comments comment = new Comments();
			comment.setCommentId(i);
			comment.setTaskId(id);
			comment.setComments("");
			dto.addComment(comment);
//		}
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
}

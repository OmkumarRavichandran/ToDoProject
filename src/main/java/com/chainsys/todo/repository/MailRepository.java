package com.chainsys.todo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.todo.model.Mail;

public interface MailRepository extends JpaRepository<Mail, String>{

	
}

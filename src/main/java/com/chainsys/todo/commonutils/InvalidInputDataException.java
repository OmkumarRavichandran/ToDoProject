package com.chainsys.todo.commonutils;

public class InvalidInputDataException extends RuntimeException {
	public InvalidInputDataException() {
		System.out.println("This is not valid ");
	}

	public InvalidInputDataException(String message) {
		System.out.println(message);
	}
}

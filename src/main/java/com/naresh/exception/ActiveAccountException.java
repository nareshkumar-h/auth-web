package com.naresh.exception;

public class ActiveAccountException extends Exception{

	private static final long serialVersionUID = 1L;

	public ActiveAccountException(String message, Throwable t){
		super(message,t);
	}
	
	public ActiveAccountException(String message){
		super(message);
	}
}

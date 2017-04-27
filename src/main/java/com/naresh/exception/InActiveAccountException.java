package com.naresh.exception;

public class InActiveAccountException extends Exception{

	private static final long serialVersionUID = 1L;

	public InActiveAccountException(String message, Throwable t){
		super(message,t);
	}
	
	public InActiveAccountException(String message){
		super(message);
	}
}

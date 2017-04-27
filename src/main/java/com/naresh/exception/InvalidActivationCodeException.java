package com.naresh.exception;

public class InvalidActivationCodeException extends Exception{

	private static final long serialVersionUID = 1L;

	public InvalidActivationCodeException(String message, Throwable t){
		super(message,t);
	}
	
	public InvalidActivationCodeException(String message){
		super(message);
	}
}

package com.dms.app.response;

import com.dms.app.model.ServiceResponseStatus;

/**
 * 
 * @author Balaji S
 * 
 */

public class BaseResponse {

	private ServiceResponseStatus status;
	private String message;
	private String description;

	/**
	 * @return the status
	 */
	public ServiceResponseStatus getStatus() {
		return status;
	}
	
	/**
	 * @param status the status to set
	 */
	public void setStatus(ServiceResponseStatus status) {
		this.status = status;
	}
	
	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}
	
	/**
	 * @param message the message to set
	 */
	public void setMessage(String message) {
		this.message = message;
	}
	
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}	
}

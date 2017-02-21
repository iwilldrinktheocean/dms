/**
 * 
 */
package com.dms.model;

/**
 * @author Richa Prasad
 *
 */
public class ProjectRoadMapDetail {

	private String description;
	private String statusComment;
	private Long projectStatus;
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
	/**
	 * @return the statusComment
	 */
	public String getStatusComment() {
		return statusComment;
	}
	/**
	 * @param statusComment the statusComment to set
	 */
	public void setStatusComment(String statusComment) {
		this.statusComment = statusComment;
	}
	/**
	 * @return the projectStatus
	 */
	public Long getProjectStatus() {
		return projectStatus;
	}
	/**
	 * @param projectStatus the projectStatus to set
	 */
	public void setProjectStatus(Long projectStatus) {
		this.projectStatus = projectStatus;
	}
}

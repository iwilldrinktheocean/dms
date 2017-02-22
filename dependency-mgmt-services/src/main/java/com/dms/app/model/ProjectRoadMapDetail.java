/**
 * 
 */
package com.dms.app.model;

import java.util.Date;

/**
 * @author Richa Prasad
 *
 */
public class ProjectRoadMapDetail {

	private String projectId;
	private String projectDesc;
	private String statusComment;
	private Long projectStatus;
	private Date releaseDate;
	private String otherComment;
	/**
	 * @return the projectId
	 */
	public String getProjectId() {
		return projectId;
	}
	/**
	 * @param projectId the projectId to set
	 */
	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	/**
	 * @return the projectDesc
	 */
	public String getProjectDesc() {
		return projectDesc;
	}
	/**
	 * @param projectDesc the projectDesc to set
	 */
	public void setProjectDesc(String projectDesc) {
		this.projectDesc = projectDesc;
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
	/**
	 * @return the releaseDate
	 */
	public Date getReleaseDate() {
		return releaseDate;
	}
	/**
	 * @param releaseDate the releaseDate to set
	 */
	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}
	/**
	 * @return the otherComment
	 */
	public String getOtherComment() {
		return otherComment;
	}
	/**
	 * @param otherComment the otherComment to set
	 */
	public void setOtherComment(String otherComment) {
		this.otherComment = otherComment;
	}
}

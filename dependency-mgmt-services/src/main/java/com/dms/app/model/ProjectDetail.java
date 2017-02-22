/**
 * 
 */
package com.dms.app.model;

import java.util.Date;

/**
 * @author Richa Prasad
 *
 */
public class ProjectDetail {

	private String projectID;
	private String projectCategory;
	private Date projectReleaseDate;
	private String projectDesc;
	private String service;
	/**
	 * @return the projectID
	 */
	public String getProjectID() {
		return projectID;
	}
	/**
	 * @param projectID the projectID to set
	 */
	public void setProjectID(String projectID) {
		this.projectID = projectID;
	}
	/**
	 * @return the projectCategory
	 */
	public String getProjectCategory() {
		return projectCategory;
	}
	/**
	 * @param projectCategory the projectCategory to set
	 */
	public void setProjectCategory(String projectCategory) {
		this.projectCategory = projectCategory;
	}
	/**
	 * @return the projectReleaseDate
	 */
	public Date getProjectReleaseDate() {
		return projectReleaseDate;
	}
	/**
	 * @param projectReleaseDate the projectReleaseDate to set
	 */
	public void setProjectReleaseDate(Date projectReleaseDate) {
		this.projectReleaseDate = projectReleaseDate;
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
	 * @return the service
	 */
	public String getService() {
		return service;
	}
	/**
	 * @param service the service to set
	 */
	public void setService(String service) {
		this.service = service;
	}
}

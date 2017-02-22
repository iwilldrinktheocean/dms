/**
 * 
 */
package com.dms.app.model;

import java.util.Date;

/**
 * @author Richa Prasad
 *
 */
public class ProjectTrackDetail {

	private String serviceOffer;
	private String projectID;
	private String priority;	// TODO enum
	private String release; 	// TODO check data type
	private Date releaseDate;
	private String gap;
	private String status;
	private String phaseOneAssessment;
	private String gapServiceID;
	/**
	 * @return the serviceOffer
	 */
	public String getServiceOffer() {
		return serviceOffer;
	}
	/**
	 * @param serviceOffer the serviceOffer to set
	 */
	public void setServiceOffer(String serviceOffer) {
		this.serviceOffer = serviceOffer;
	}
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
	 * @return the priority
	 */
	public String getPriority() {
		return priority;
	}
	/**
	 * @param priority the priority to set
	 */
	public void setPriority(String priority) {
		this.priority = priority;
	}
	/**
	 * @return the release
	 */
	public String getRelease() {
		return release;
	}
	/**
	 * @param release the release to set
	 */
	public void setRelease(String release) {
		this.release = release;
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
	 * @return the gap
	 */
	public String getGap() {
		return gap;
	}
	/**
	 * @param gap the gap to set
	 */
	public void setGap(String gap) {
		this.gap = gap;
	}
	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}
	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}
	/**
	 * @return the phaseOneAssessment
	 */
	public String getPhaseOneAssessment() {
		return phaseOneAssessment;
	}
	/**
	 * @param phaseOneAssessment the phaseOneAssessment to set
	 */
	public void setPhaseOneAssessment(String phaseOneAssessment) {
		this.phaseOneAssessment = phaseOneAssessment;
	}
	/**
	 * @return the gapServiceID
	 */
	public String getGapServiceID() {
		return gapServiceID;
	}
	/**
	 * @param gapServiceID the gapServiceID to set
	 */
	public void setGapServiceID(String gapServiceID) {
		this.gapServiceID = gapServiceID;
	}
}

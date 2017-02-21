/**
 * 
 */
package com.dms.app.response;

/**
 * @author Richa Prasad
 *
 */
public class ConflictsReportingResponse extends BaseResponse{

	private Long noOfCapabilities;
	private Long noOfApplications;
	private Long noOfReleases;
	private Long noOfServices;
	/**
	 * @return the noOfCapabilities
	 */
	public Long getNoOfCapabilities() {
		return noOfCapabilities;
	}
	/**
	 * @param noOfCapabilities the noOfCapabilities to set
	 */
	public void setNoOfCapabilities(Long noOfCapabilities) {
		this.noOfCapabilities = noOfCapabilities;
	}
	/**
	 * @return the noOfApplications
	 */
	public Long getNoOfApplications() {
		return noOfApplications;
	}
	/**
	 * @param noOfApplications the noOfApplications to set
	 */
	public void setNoOfApplications(Long noOfApplications) {
		this.noOfApplications = noOfApplications;
	}
	/**
	 * @return the noOfReleases
	 */
	public Long getNoOfReleases() {
		return noOfReleases;
	}
	/**
	 * @param noOfReleases the noOfReleases to set
	 */
	public void setNoOfReleases(Long noOfReleases) {
		this.noOfReleases = noOfReleases;
	}
	/**
	 * @return the noOfServices
	 */
	public Long getNoOfServices() {
		return noOfServices;
	}
	/**
	 * @param noOfServices the noOfServices to set
	 */
	public void setNoOfServices(Long noOfServices) {
		this.noOfServices = noOfServices;
	}
	

}

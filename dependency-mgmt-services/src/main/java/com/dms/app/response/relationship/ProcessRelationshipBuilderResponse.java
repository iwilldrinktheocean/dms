/**
 * 
 */
package com.dms.app.response.relationship;

import com.dms.app.response.BaseResponse;

/**
 * @author Richa Prasad
 *
 */
public class ProcessRelationshipBuilderResponse extends BaseResponse {

	private Long noOfProcesses = 110846L;
	private Long noOfReleases = 10L;
	private Long noOfApplications = 130L;
	private Long noOfServices = 390L;
	/**
	 * @return the noOfProcesses
	 */
	public Long getNoOfProcesses() {
		return noOfProcesses;
	}
	/**
	 * @param noOfProcesses the noOfProcesses to set
	 */
	public void setNoOfProcesses(Long noOfProcesses) {
		this.noOfProcesses = noOfProcesses;
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

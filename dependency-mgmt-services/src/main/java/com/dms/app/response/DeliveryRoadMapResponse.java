/**
 * 
 */
package com.dms.app.response;

import java.math.BigDecimal;

/**
 * @author Richa Prasad
 *
 */
public class DeliveryRoadMapResponse extends BaseResponse {

	private Long noOfProjects = 110846L;
	private Double release = 17.00000213;
	private Long noOfApplications = 961L;
	private String roadMapStatus = "Locked";
	private BigDecimal developmentCosts = new BigDecimal(119);
	private BigDecimal costSavings = new BigDecimal(187653);

	/**
	 * @return the noOfProjects
	 */
	public Long getNoOfProjects() {
		return noOfProjects;
	}

	/**
	 * @param noOfProjects
	 *            the noOfProjects to set
	 */
	public void setNoOfProjects(Long noOfProjects) {
		this.noOfProjects = noOfProjects;
	}

	/**
	 * @return the release
	 */
	public Double getRelease() {
		return release;
	}

	/**
	 * @param release
	 *            the release to set
	 */
	public void setRelease(Double release) {
		this.release = release;
	}

	/**
	 * @return the noOfApplications
	 */
	public Long getNoOfApplications() {
		return noOfApplications;
	}

	/**
	 * @param noOfApplications
	 *            the noOfApplications to set
	 */
	public void setNoOfApplications(Long noOfApplications) {
		this.noOfApplications = noOfApplications;
	}


	/**
	 * @return the developmentCosts
	 */
	public BigDecimal getDevelopmentCosts() {
		return developmentCosts;
	}

	/**
	 * @param developmentCosts
	 *            the developmentCosts to set
	 */
	public void setDevelopmentCosts(BigDecimal developmentCosts) {
		this.developmentCosts = developmentCosts;
	}

	/**
	 * @return the costSavings
	 */
	public BigDecimal getCostSavings() {
		return costSavings;
	}

	/**
	 * @param costSavings
	 *            the costSavings to set
	 */
	public void setCostSavings(BigDecimal costSavings) {
		this.costSavings = costSavings;
	}

	/**
	 * @return the roadMapStatus
	 */
	public String getRoadMapStatus() {
		return roadMapStatus;
	}

	/**
	 * @param roadMapStatus the roadMapStatus to set
	 */
	public void setRoadMapStatus(String roadMapStatus) {
		this.roadMapStatus = roadMapStatus;
	}

}

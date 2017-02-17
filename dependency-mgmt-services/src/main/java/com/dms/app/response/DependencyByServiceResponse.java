/**
 * 
 */
package com.dms.app.response;

import java.math.BigDecimal;

/**
 * @author PWC
 *
 */
public class DependencyByServiceResponse {


	private Long noOfServices=110846L;
	private Double noOfReleases=1.267300003;
	private Long noOfApplications=961L;
	private String status="Active";
	private BigDecimal developmentCosts=new BigDecimal(159);
	private BigDecimal costSavings=new BigDecimal(379.829);
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
	/**
	 * @return the noOfReleases
	 */
	public Double getNoOfReleases() {
		return noOfReleases;
	}
	/**
	 * @param noOfReleases the noOfReleases to set
	 */
	public void setNoOfReleases(Double noOfReleases) {
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
	 * @return the developmentCosts
	 */
	public BigDecimal getDevelopmentCosts() {
		return developmentCosts;
	}
	/**
	 * @param developmentCosts the developmentCosts to set
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
	 * @param costSavings the costSavings to set
	 */
	public void setCostSavings(BigDecimal costSavings) {
		this.costSavings = costSavings;
	}
	
	

}

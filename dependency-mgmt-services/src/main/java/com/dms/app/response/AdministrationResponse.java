/**
 * 
 */
package com.dms.app.response;

import java.math.BigDecimal;

/**
 * @author PWC
 *
 */
public class AdministrationResponse extends BaseResponse  {

	private Long noOfCapabilities=753L;
	private BigDecimal costSavings=new BigDecimal(7892);
	private Long noOfApplications=392L;
	private BigDecimal developmentCosts=new BigDecimal(19);
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
	
	

	

}

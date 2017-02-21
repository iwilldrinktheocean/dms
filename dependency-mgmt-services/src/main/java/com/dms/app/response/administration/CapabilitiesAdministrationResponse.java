/**
 * 
 */
package com.dms.app.response.administration;

import java.math.BigDecimal;

import com.dms.app.response.BaseResponse;

/**
 * @author Richa Prasad
 *
 */
public class CapabilitiesAdministrationResponse extends BaseResponse {

	private Long noOfCapabilities;
	private BigDecimal costSavings;
	private Long noOfApplications;
	private BigDecimal developmentCosts;
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

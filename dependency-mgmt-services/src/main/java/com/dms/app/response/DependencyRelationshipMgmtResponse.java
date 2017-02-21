/**
 * 
 */
package com.dms.app.response;

import java.math.BigDecimal;

/**
 * @author Richa Prasad
 *
 */
public class DependencyRelationshipMgmtResponse extends BaseResponse{

	private Long noOfCapabilities = 110846L;
	private BigDecimal costSavings = new BigDecimal(379826);
	private Long noOfApplications = 961L;
	private BigDecimal developmentCosts = new BigDecimal(159);

	/**
	 * @return the noOfCapabilities
	 */
	public Long getNoOfCapabilities() {
		return noOfCapabilities;
	}

	/**
	 * @param noOfCapabilities
	 *            the noOfCapabilities to set
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
	 * @param costSavings
	 *            the costSavings to set
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

}

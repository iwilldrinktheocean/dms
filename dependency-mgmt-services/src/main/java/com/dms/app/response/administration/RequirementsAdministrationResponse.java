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
public class RequirementsAdministrationResponse extends BaseResponse {

	private Long noOfApplications;
	private BigDecimal totalAppCosts;
	private BigDecimal totalAppSavings;
	private Long totalFTE;
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
	 * @return the totalAppCosts
	 */
	public BigDecimal getTotalAppCosts() {
		return totalAppCosts;
	}
	/**
	 * @param totalAppCosts the totalAppCosts to set
	 */
	public void setTotalAppCosts(BigDecimal totalAppCosts) {
		this.totalAppCosts = totalAppCosts;
	}
	/**
	 * @return the totalAppSavings
	 */
	public BigDecimal getTotalAppSavings() {
		return totalAppSavings;
	}
	/**
	 * @param totalAppSavings the totalAppSavings to set
	 */
	public void setTotalAppSavings(BigDecimal totalAppSavings) {
		this.totalAppSavings = totalAppSavings;
	}
	/**
	 * @return the totalFTE
	 */
	public Long getTotalFTE() {
		return totalFTE;
	}
	/**
	 * @param totalFTE the totalFTE to set
	 */
	public void setTotalFTE(Long totalFTE) {
		this.totalFTE = totalFTE;
	}
}

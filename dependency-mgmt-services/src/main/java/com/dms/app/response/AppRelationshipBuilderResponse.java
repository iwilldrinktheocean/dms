/**
 * 
 */
package com.dms.app.response;

import java.math.BigDecimal;

/**
 * @author rprasad017
 *
 */
public class AppRelationshipBuilderResponse {
	
	private Long noOfApplications = 961L;
	private BigDecimal totalAppCost = new BigDecimal(379826);
	private BigDecimal totalAppSavings = new BigDecimal(379);
	private Long totalFTE = 950L; // TODO what is FTE, check data type
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
	 * @return the totalAppCost
	 */
	public BigDecimal getTotalAppCost() {
		return totalAppCost;
	}
	/**
	 * @param totalAppCost the totalAppCost to set
	 */
	public void setTotalAppCost(BigDecimal totalAppCost) {
		this.totalAppCost = totalAppCost;
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

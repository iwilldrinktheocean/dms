/**
 * 
 */
package com.dms.app.response;

import java.math.BigDecimal;

/**
 * @author PWC
 *
 */
public class ResourceAllocationResponse  {

	
	private Long noOfFTEs=110846L;
	private Long noOfUtilizedFTEs=908L;
	private BigDecimal costOfFTEs=new BigDecimal(15);
	private BigDecimal budgetAvailable=new BigDecimal(45000);
	/**
	 * @return the noOfFTEs
	 */
	public Long getNoOfFTEs() {
		return noOfFTEs;
	}
	/**
	 * @param noOfFTEs the noOfFTEs to set
	 */
	public void setNoOfFTEs(Long noOfFTEs) {
		this.noOfFTEs = noOfFTEs;
	}
	/**
	 * @return the noOfUtilizedFTEs
	 */
	public Long getNoOfUtilizedFTEs() {
		return noOfUtilizedFTEs;
	}
	/**
	 * @param noOfUtilizedFTEs the noOfUtilizedFTEs to set
	 */
	public void setNoOfUtilizedFTEs(Long noOfUtilizedFTEs) {
		this.noOfUtilizedFTEs = noOfUtilizedFTEs;
	}
	/**
	 * @return the costOfFTEs
	 */
	public BigDecimal getCostOfFTEs() {
		return costOfFTEs;
	}
	/**
	 * @param costOfFTEs the costOfFTEs to set
	 */
	public void setCostOfFTEs(BigDecimal costOfFTEs) {
		this.costOfFTEs = costOfFTEs;
	}
	/**
	 * @return the budgetAvailable
	 */
	public BigDecimal getBudgetAvailable() {
		return budgetAvailable;
	}
	/**
	 * @param budgetAvailable the budgetAvailable to set
	 */
	public void setBudgetAvailable(BigDecimal budgetAvailable) {
		this.budgetAvailable = budgetAvailable;
	}
	
	

}

/**
 * 
 */
package com.dms.app.response;

import java.math.BigDecimal;

/**
 * @author Richa Prasad
 *
 */
public class BudgetReportingResponse extends BaseResponse{

	private BigDecimal releaseBudget;
	private BigDecimal budgetUsed;
	private BigDecimal costOfFTE;
	private BigDecimal infraCost;
	/**
	 * @return the releaseBudget
	 */
	public BigDecimal getReleaseBudget() {
		return releaseBudget;
	}
	/**
	 * @param releaseBudget the releaseBudget to set
	 */
	public void setReleaseBudget(BigDecimal releaseBudget) {
		this.releaseBudget = releaseBudget;
	}
	/**
	 * @return the budgetUsed
	 */
	public BigDecimal getBudgetUsed() {
		return budgetUsed;
	}
	/**
	 * @param budgetUsed the budgetUsed to set
	 */
	public void setBudgetUsed(BigDecimal budgetUsed) {
		this.budgetUsed = budgetUsed;
	}
	/**
	 * @return the costOfFTE
	 */
	public BigDecimal getCostOfFTE() {
		return costOfFTE;
	}
	/**
	 * @param costOfFTE the costOfFTE to set
	 */
	public void setCostOfFTE(BigDecimal costOfFTE) {
		this.costOfFTE = costOfFTE;
	}
	/**
	 * @return the infraCost
	 */
	public BigDecimal getInfraCost() {
		return infraCost;
	}
	/**
	 * @param infraCost the infraCost to set
	 */
	public void setInfraCost(BigDecimal infraCost) {
		this.infraCost = infraCost;
	}
	
	

}

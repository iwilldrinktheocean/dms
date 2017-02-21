/**
 * 
 */
package com.dms.app.response;

import java.math.BigDecimal;

/**
 * @author Richa Prasad
 *
 */
public class FTERAllocationReportingResponse extends BaseResponse {

	private Long totalFTEs;
	private Long allocatedFTEs;
	private BigDecimal totalCost;
	private BigDecimal currentCost;
	/**
	 * @return the totalFTEs
	 */
	public Long getTotalFTEs() {
		return totalFTEs;
	}
	/**
	 * @param totalFTEs the totalFTEs to set
	 */
	public void setTotalFTEs(Long totalFTEs) {
		this.totalFTEs = totalFTEs;
	}
	/**
	 * @return the allocatedFTEs
	 */
	public Long getAllocatedFTEs() {
		return allocatedFTEs;
	}
	/**
	 * @param allocatedFTEs the allocatedFTEs to set
	 */
	public void setAllocatedFTEs(Long allocatedFTEs) {
		this.allocatedFTEs = allocatedFTEs;
	}
	/**
	 * @return the totalCost
	 */
	public BigDecimal getTotalCost() {
		return totalCost;
	}
	/**
	 * @param totalCost the totalCost to set
	 */
	public void setTotalCost(BigDecimal totalCost) {
		this.totalCost = totalCost;
	}
	/**
	 * @return the currentCost
	 */
	public BigDecimal getCurrentCost() {
		return currentCost;
	}
	/**
	 * @param currentCost the currentCost to set
	 */
	public void setCurrentCost(BigDecimal currentCost) {
		this.currentCost = currentCost;
	}
	

}

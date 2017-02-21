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
public class ResourceManagementResponse extends BaseResponse {

	private Long noOfResources;
	private Long allocatedFTE;
	private Long availableFTEs;
	private BigDecimal costFTE;
	/**
	 * @return the noOfResources
	 */
	public Long getNoOfResources() {
		return noOfResources;
	}
	/**
	 * @param noOfResources the noOfResources to set
	 */
	public void setNoOfResources(Long noOfResources) {
		this.noOfResources = noOfResources;
	}
	/**
	 * @return the allocatedFTE
	 */
	public Long getAllocatedFTE() {
		return allocatedFTE;
	}
	/**
	 * @param allocatedFTE the allocatedFTE to set
	 */
	public void setAllocatedFTE(Long allocatedFTE) {
		this.allocatedFTE = allocatedFTE;
	}
	/**
	 * @return the availableFTEs
	 */
	public Long getAvailableFTEs() {
		return availableFTEs;
	}
	/**
	 * @param availableFTEs the availableFTEs to set
	 */
	public void setAvailableFTEs(Long availableFTEs) {
		this.availableFTEs = availableFTEs;
	}
	/**
	 * @return the costFTE
	 */
	public BigDecimal getCostFTE() {
		return costFTE;
	}
	/**
	 * @param costFTE the costFTE to set
	 */
	public void setCostFTE(BigDecimal costFTE) {
		this.costFTE = costFTE;
	}
}

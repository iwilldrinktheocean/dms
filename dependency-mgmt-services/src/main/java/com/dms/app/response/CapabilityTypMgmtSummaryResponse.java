/**
 * 
 */
package com.dms.app.response;

/**
 * @author stammiredd001
 *
 */
public class CapabilityTypMgmtSummaryResponse extends BaseResponse {
	private Long noOfCapabilityTypes;

	/**
	 * @return the noOfCapabilityTypes
	 */
	public Long getNoOfCapabilityTypes() {
		return noOfCapabilityTypes;
	}

	/**
	 * @param noOfCapabilityTypes
	 *            the noOfCapabilityTypes to set
	 */
	public void setNoOfCapabilityTypes(Long noOfCapabilityTypes) {
		this.noOfCapabilityTypes = noOfCapabilityTypes;
	}
}

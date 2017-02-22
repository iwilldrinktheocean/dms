/**
 * 
 */
package com.dms.app.response;

/**
 * @author stammiredd001
 *
 */
public class BusinessOwnerSummaryResponse extends BaseResponse {
	private Long noOfServices;

	/**
	 * @return the noOfServices
	 */
	public Long getNoOfServices() {
		return noOfServices;
	}

	/**
	 * @param noOfServices the noOfServices to set
	 */
	public void setNoOfServices(Long noOfServices) {
		this.noOfServices = noOfServices;
	}

}

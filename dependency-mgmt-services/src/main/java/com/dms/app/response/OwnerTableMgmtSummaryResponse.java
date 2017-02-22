/**
 * 
 */
package com.dms.app.response;

/**
 * @author stammiredd001
 *
 */
public class OwnerTableMgmtSummaryResponse extends BaseResponse {
	private Long noOfOwners;

	/**
	 * @return the noOfOwners
	 */
	public Long getNoOfOwners() {
		return noOfOwners;
	}

	/**
	 * @param noOfOwners the noOfOwners to set
	 */
	public void setNoOfOwners(Long noOfOwners) {
		this.noOfOwners = noOfOwners;
	}
}

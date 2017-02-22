/**
 * 
 */
package com.dms.app.response;

import com.dms.app.response.BaseResponse;

/**
 * @author stammiredd001
 *
 */
public class ReleaseMgmtSummaryResponse extends BaseResponse {
	private Long noOfReleases;

	/**
	 * @return the noOfReleases
	 */
	public Long getNoOfReleases() {
		return noOfReleases;
	}

	/**
	 * @param noOfReleases
	 *            the noOfReleases to set
	 */
	public void setNoOfReleases(Long noOfReleases) {
		this.noOfReleases = noOfReleases;
	}
}

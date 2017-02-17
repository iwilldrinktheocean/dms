/**
 * 
 */
package com.dms.app.response;

import java.util.List;

import com.dms.model.ReleaseDetail;

/**
 * @author PWC
 *
 */
public class ReleasesResponse extends BaseResponse {

	private List<ReleaseDetail> releaseDetails;

	/**
	 * @return the releases
	 */
	public List<ReleaseDetail> getReleaseDetails() {
		return releaseDetails;
	}

	/**
	 * @param releases
	 *            the releases to set
	 */
	public void setReleaseDetails(List<ReleaseDetail> releaseDetails) {
		this.releaseDetails = releaseDetails;
	}

}

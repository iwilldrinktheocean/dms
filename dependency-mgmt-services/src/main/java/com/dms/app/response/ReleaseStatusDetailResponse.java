/**
 * 
 */
package com.dms.app.response;

import com.dms.model.ReleaseStatusDetail;

/**
 * @author Richa Prasad
 *
 */
public class ReleaseStatusDetailResponse extends BaseResponse {

	private ReleaseStatusDetail releaseStatusDetail;

	/**
	 * @return the releaseStatusDetail
	 */
	public ReleaseStatusDetail getReleaseStatusDetail() {
		return releaseStatusDetail;
	}

	/**
	 * @param releaseStatusDetail the releaseStatusDetail to set
	 */
	public void setReleaseStatusDetail(ReleaseStatusDetail releaseStatusDetail) {
		this.releaseStatusDetail = releaseStatusDetail;
	}
}

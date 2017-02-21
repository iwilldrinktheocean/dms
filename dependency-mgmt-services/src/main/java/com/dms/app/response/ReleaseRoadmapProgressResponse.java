/**
 * 
 */
package com.dms.app.response;

import java.math.BigDecimal;

/**
 * @author Richa Prasad
 *
 */
public class ReleaseRoadmapProgressResponse extends BaseResponse {

	private BigDecimal releaseRoadmapProgress;

	/**
	 * @return the releaseRoadmapProgress
	 */
	public BigDecimal getReleaseRoadmapProgress() {
		return releaseRoadmapProgress;
	}

	/**
	 * @param releaseRoadmapProgress the releaseRoadmapProgress to set
	 */
	public void setReleaseRoadmapProgress(BigDecimal releaseRoadmapProgress) {
		this.releaseRoadmapProgress = releaseRoadmapProgress;
	}
}

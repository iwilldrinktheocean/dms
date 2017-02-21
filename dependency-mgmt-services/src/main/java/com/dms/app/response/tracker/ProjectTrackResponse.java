/**
 * 
 */
package com.dms.app.response.tracker;

import java.util.List;

import com.dms.app.response.BaseResponse;
import com.dms.model.ProjectTrackDetail;

/**
 * @author Richa Prasad
 *
 */
public class ProjectTrackResponse extends BaseResponse {

	private List<ProjectTrackDetail> projectTrackDetails;

	/**
	 * @return the projectTrackDetails
	 */
	public List<ProjectTrackDetail> getProjectTrackDetails() {
		return projectTrackDetails;
	}

	/**
	 * @param projectTrackDetails the projectTrackDetails to set
	 */
	public void setProjectTrackDetails(List<ProjectTrackDetail> projectTrackDetails) {
		this.projectTrackDetails = projectTrackDetails;
	}
}

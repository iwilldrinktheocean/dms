/**
 * 
 */
package com.dms.app.response.tracker;

import java.util.List;

import com.dms.app.model.ProjectTrackDetail;
import com.dms.app.response.BaseResponse;

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

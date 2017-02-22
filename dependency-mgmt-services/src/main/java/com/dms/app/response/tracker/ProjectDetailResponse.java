/**
 * 
 */
package com.dms.app.response.tracker;

import java.util.List;

import com.dms.app.model.ProjectDetail;
import com.dms.app.response.BaseResponse;

/**
 * @author Richa Prasad
 *
 */
public class ProjectDetailResponse extends BaseResponse {

	private List<ProjectDetail> projectDetails;

	/**
	 * @return the projectDetails
	 */
	public List<ProjectDetail> getProjectDetails() {
		return projectDetails;
	}

	/**
	 * @param projectDetails the projectDetails to set
	 */
	public void setProjectDetails(List<ProjectDetail> projectDetails) {
		this.projectDetails = projectDetails;
	}
}

/**
 * 
 */
package com.dms.app.response;

import java.util.List;

import com.dms.app.model.ProjectRoadMapDetail;

/**
 * @author Richa Prasad
 *
 */
public class ProjectRoadmapHistoryResponse extends BaseResponse {

	private List<ProjectRoadMapDetail> projectRoadMapDetails;

	/**
	 * @return the projectRoadMapDetails
	 */
	public List<ProjectRoadMapDetail> getProjectRoadMapDetails() {
		return projectRoadMapDetails;
	}

	/**
	 * @param projectRoadMapDetails the projectRoadMapDetails to set
	 */
	public void setProjectRoadMapDetails(List<ProjectRoadMapDetail> projectRoadMapDetails) {
		this.projectRoadMapDetails = projectRoadMapDetails;
	}
}

/**
 * 
 */
package com.dms.app.response;

import com.dms.model.ProjectRoadMapDetail;

/**
 * @author Richa Prasad
 *
 */
public class ProjectRoadmapDetailResponse extends BaseResponse {

	private ProjectRoadMapDetail projectRoadMapDetail;

	/**
	 * @return the projectRoadMapDetail
	 */
	public ProjectRoadMapDetail getProjectRoadMapDetail() {
		return projectRoadMapDetail;
	}

	/**
	 * @param projectRoadMapDetail the projectRoadMapDetail to set
	 */
	public void setProjectRoadMapDetail(ProjectRoadMapDetail projectRoadMapDetail) {
		this.projectRoadMapDetail = projectRoadMapDetail;
	}
}

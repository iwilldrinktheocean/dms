/**
 * 
 */
package com.dms.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dms.app.data.ProjectRoadmapDetailDao;
import com.dms.app.model.ApplicationData;
import com.dms.app.model.ProjectDetail;
import com.dms.app.model.ProjectRoadMapDetail;
import com.dms.app.model.ServiceDetail;
import com.dms.app.service.ProjectRoadmapDetailService;

/**
 * @author Richa Prasad
 *
 */
@Service
public class ProjectRoadmapDetailServiceImpl implements ProjectRoadmapDetailService {

	@Autowired
	private ProjectRoadmapDetailDao projectRoadmapDetailDao;
	
	@Override
	public ProjectRoadMapDetail getProjectDescription(String projectId, String releaseId) {
		return projectRoadmapDetailDao.getProjectDescription(projectId, releaseId);
	}

	@Override
	public List<ProjectDetail> getRelatedProjects(String projectId, String releaseId) {
		return projectRoadmapDetailDao.getRelatedProjects(projectId, releaseId);
	}

	@Override
	public List<ApplicationData> getImpactedApplications(String projectId, String releaseId) {
		return projectRoadmapDetailDao.getImpactedApplications(projectId, releaseId);
	}

	@Override
	public List<ServiceDetail> getImpactedServices(String projectId, String releaseId) {
		return projectRoadmapDetailDao.getImpactedServices(projectId, releaseId);
	}

	@Override
	public List<ProjectRoadMapDetail> getOtherCommentsOrHistory(String projectId, String releaseId) {
		return projectRoadmapDetailDao.getOtherCommentsOrHistory(projectId, releaseId);
	}

}

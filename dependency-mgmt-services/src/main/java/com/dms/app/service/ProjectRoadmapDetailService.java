/**
 * 
 */
package com.dms.app.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.dms.app.model.ApplicationData;
import com.dms.app.model.ProjectDetail;
import com.dms.app.model.ProjectRoadMapDetail;
import com.dms.app.model.ServiceDetail;

/**
 * @author Richa Prasad
 *
 */
@Service
public interface ProjectRoadmapDetailService {

	public ProjectRoadMapDetail getProjectDescription(String projectId, String releaseId);
	
	public List<ProjectDetail> getRelatedProjects(String projectId, String releaseId);
	
	public List<ApplicationData> getImpactedApplications(String projectId, String releaseId);
	
	public List<ServiceDetail> getImpactedServices(String projectId, String releaseId);
	
	public List<ProjectRoadMapDetail> getOtherCommentsOrHistory(String projectId, String releaseId);
	
}

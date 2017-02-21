/**
 * 
 */
package com.dms.app.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.dms.model.ApplicationData;
import com.dms.model.ProjectDetail;
import com.dms.model.ProjectRoadMapDetail;
import com.dms.model.ServiceDetail;

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
	
}

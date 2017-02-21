/**
 * 
 */
package com.dms.app.data;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.dms.model.ApplicationData;
import com.dms.model.ProjectDetail;
import com.dms.model.ProjectRoadMapDetail;
import com.dms.model.ServiceDetail;

/**
 * @author Richa Prasad
 *
 */
@Repository
public interface ProjectRoadmapDetailDao {

	public ProjectRoadMapDetail getProjectDescription(String projectId, String releaseId);
	
	public List<ProjectDetail> getRelatedProjects(String projectId, String releaseId);
	
	public List<ApplicationData> getImpactedApplications(String projectId, String releaseId);
	
	public List<ServiceDetail> getImpactedServices(String projectId, String releaseId);
}

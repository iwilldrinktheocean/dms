/**
 * 
 */
package com.dms.app.data;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.dms.app.model.ProjectDetail;
import com.dms.app.model.ProjectTrackDetail;
import com.dms.app.model.ServiceDetail;
import com.dms.app.model.ServiceRequirement;
import com.dms.app.model.ServiceTrackerDetail;

/**
 * @author Richa Prasad
 *
 */
@Repository
public interface ServiceTrackerDao {

	public List<ServiceDetail> getAllServices();
	
	public List<ProjectDetail> getOperationalActProjectsInProgress(String releaseId, String serviceID);
	
	public List<ProjectDetail> getOperationalActProjectsCompleted(String releaseId, String serviceID);
	
	public List<ProjectTrackDetail> getProductActPrjTrackProjectsInProgress(String releaseId, String serviceID);
	
	public List<ProjectTrackDetail> getProductActPrjTrackProjectsUnassigned(String releaseId, String serviceID);
	
	public List<ProjectTrackDetail> getProductActPrjTrackProjectsCompleted(String releaseId, String serviceID);
	
	public List<ServiceRequirement> getProductActReqToService(String releaseId, String serviceID);
	
	public List<ServiceRequirement> getProductActReqAcrossAllServices(String releaseId, String serviceID);
	
	public ServiceTrackerDetail getTotalProjectsAndReqOrCapabilities(String releaseId, String serviceID);
}

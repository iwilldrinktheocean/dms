/**
 * 
 */
package com.dms.app.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.dms.model.ProjectTrackDetail;
import com.dms.model.ServiceDetail;
import com.dms.model.ProjectDetail;
import com.dms.model.ServiceRequirement;
import com.dms.model.ServiceTrackerDetail;

/**
 * @author Richa Prasad
 *
 */
@Service
public interface ServiceTrackerService {

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

/**
 * 
 */
package com.dms.app.data;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.dms.model.ProjectTrackDetail;
import com.dms.model.ServiceDetail;
import com.dms.model.ProjectDetail;
import com.dms.model.ServiceRequirement;
import com.dms.model.ServiceTrackerDetail;

/**
 * @author Richa Prasad
 *
 */
@Repository
public interface ServiceTrackerDao {

	public List<ServiceDetail> getAllServices();
	
	public List<ProjectDetail> getOperationalActProjectsInProgress(String releaseId, String serviceID);
	
	public List<ProjectDetail> getOperationalActProjectsCompleted(String serviceID);
	
	public List<ProjectTrackDetail> getProductActPrjTrackProjectsInProgress(String serviceID);
	
	public List<ProjectTrackDetail> getProductActPrjTrackProjectsUnassigned(String serviceID);
	
	public List<ProjectTrackDetail> getProductActPrjTrackProjectsCompleted(String serviceID);
	
	public List<ServiceRequirement> getProductActReqToService(String serviceID);
	
	public List<ServiceRequirement> getProductActReqAcrossAllServices(String serviceID);
	
	public ServiceTrackerDetail getTotalProjectsAndReqOrCapabilities(String serviceID);
}

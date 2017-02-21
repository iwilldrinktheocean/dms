/**
 * 
 */
package com.dms.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dms.app.data.ServiceTrackerDao;
import com.dms.app.service.ServiceTrackerService;
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
public class ServiceTrackerServiceImpl implements ServiceTrackerService {

	@Autowired
	private ServiceTrackerDao serviceTrackerDao;
	
	@Override
	public List<ServiceDetail> getAllServices() {
		return serviceTrackerDao.getAllServices();
	}

	@Override
	public List<ProjectDetail> getOperationalActProjectsInProgress(String releaseId, String serviceID) {
		return serviceTrackerDao.getOperationalActProjectsInProgress(releaseId, serviceID);
	}

	@Override
	public List<ProjectDetail> getOperationalActProjectsCompleted(String releaseId, String serviceID) {
		return serviceTrackerDao.getOperationalActProjectsCompleted(releaseId, serviceID);
	}

	@Override
	public List<ProjectTrackDetail> getProductActPrjTrackProjectsInProgress(String releaseId, String serviceID) {
		return serviceTrackerDao.getProductActPrjTrackProjectsInProgress(releaseId, serviceID);
	}

	@Override
	public List<ProjectTrackDetail> getProductActPrjTrackProjectsUnassigned(String releaseId, String serviceID) {
		return serviceTrackerDao.getProductActPrjTrackProjectsUnassigned(releaseId, serviceID);
	}

	@Override
	public List<ProjectTrackDetail> getProductActPrjTrackProjectsCompleted(String releaseId, String serviceID) {
		return serviceTrackerDao.getProductActPrjTrackProjectsCompleted(releaseId, serviceID);
	}

	@Override
	public List<ServiceRequirement> getProductActReqToService(String releaseId, String serviceID) {
		return serviceTrackerDao.getProductActReqToService(releaseId, serviceID);
	}

	@Override
	public List<ServiceRequirement> getProductActReqAcrossAllServices(String releaseId, String serviceID) {
		return serviceTrackerDao.getProductActReqAcrossAllServices(releaseId, serviceID);
	}

	@Override
	public ServiceTrackerDetail getTotalProjectsAndReqOrCapabilities(String releaseId, String serviceID) {
		return serviceTrackerDao.getTotalProjectsAndReqOrCapabilities(releaseId, serviceID);
	}

}

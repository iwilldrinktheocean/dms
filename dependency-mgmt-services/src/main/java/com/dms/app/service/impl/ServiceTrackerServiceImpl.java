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
	public List<ProjectDetail> getOperationalActProjectsCompleted(String serviceID) {
		return serviceTrackerDao.getOperationalActProjectsCompleted(serviceID);
	}

	@Override
	public List<ProjectTrackDetail> getProductActPrjTrackProjectsInProgress(String serviceID) {
		return serviceTrackerDao.getProductActPrjTrackProjectsInProgress(serviceID);
	}

	@Override
	public List<ProjectTrackDetail> getProductActPrjTrackProjectsUnassigned(String serviceID) {
		return serviceTrackerDao.getProductActPrjTrackProjectsUnassigned(serviceID);
	}

	@Override
	public List<ProjectTrackDetail> getProductActPrjTrackProjectsCompleted(String serviceID) {
		return serviceTrackerDao.getProductActPrjTrackProjectsCompleted(serviceID);
	}

	@Override
	public List<ServiceRequirement> getProductActReqToService(String serviceID) {
		return serviceTrackerDao.getProductActReqToService(serviceID);
	}

	@Override
	public List<ServiceRequirement> getProductActReqAcrossAllServices(String serviceID) {
		return serviceTrackerDao.getProductActReqAcrossAllServices(serviceID);
	}

	@Override
	public ServiceTrackerDetail getTotalProjectsAndReqOrCapabilities(String serviceID) {
		return serviceTrackerDao.getTotalProjectsAndReqOrCapabilities(serviceID);
	}

}

/**
 * 
 */
package com.dms.app.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.dms.app.response.tracker.ProjectTrackResponse;
import com.dms.app.model.ServiceResponseStatus;
import com.dms.app.response.tracker.ProjectDetailResponse;
import com.dms.app.response.tracker.ServiceNamesResponse;
import com.dms.app.response.tracker.ServiceRequirementResponse;
import com.dms.app.response.tracker.ServiceTrackerDetailResponse;
import com.dms.app.service.ServiceTrackerService;

/**
 * @author Richa Prasad
 *
 */
@RestController
@RequestMapping("/serviceTracker")
public class ServiceTrackerController {
	
	private static final Logger logger = Logger.getLogger(ServiceTrackerController.class);
	
	@Autowired
	private ServiceTrackerService serviceTrackerService;
	
	@RequestMapping(value = "/dependency/service/tracker/services/list", method = RequestMethod.GET)
	public ServiceNamesResponse getAllServices() {
		logger.info("Start getAllServices ");
		ServiceNamesResponse services = new ServiceNamesResponse();
		try {
			services.setServiceDetails(serviceTrackerService.getAllServices());
			services.setStatus(ServiceResponseStatus.SUCCESS);
			services.setMessage(ServiceResponseStatus.SUCCESS.name());
			services.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			services.setStatus(ServiceResponseStatus.FAILURE);
			services.setMessage("Unable get Services");
			services.setDescription(e.getMessage());
		}
		
		logger.info("End getAllServices ");
		return services;
	}
	
	@RequestMapping(value = "/dependency/service/tracker/operational/projects/inprogress/release/{releaseId}/service/{serviceID}", method = RequestMethod.GET)
	public ProjectDetailResponse getOperationalActProjectsInProgress(@PathVariable("releaseId") String releaseId,
			@PathVariable("serviceID") String serviceID) {
		logger.info("Start getOperationalActProjectsInProgress ");
		
		ProjectDetailResponse projects = new ProjectDetailResponse();
		try {
			projects.setProjectDetails(serviceTrackerService.getOperationalActProjectsInProgress(releaseId, serviceID));
			projects.setStatus(ServiceResponseStatus.SUCCESS);
			projects.setMessage(ServiceResponseStatus.SUCCESS.name());
			projects.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			projects.setStatus(ServiceResponseStatus.FAILURE);
			projects.setMessage("Unable get Operation Activities ProjectsInProgress");
			projects.setDescription(e.getMessage());
		}
		
		logger.info("End getOperationalActProjectsInProgress ");
		return projects;
	}
	
	@RequestMapping(value = "/dependency/service/tracker/operational/projects/completed/release/{releaseId}/service/{serviceID}", method = RequestMethod.GET)
	public ProjectDetailResponse getOperationalActProjectsCompleted(@PathVariable("releaseId") String releaseId,
			@PathVariable("serviceID") String serviceID) {
		logger.info("Start getOperationalActProjectsCompleted ");
		
		ProjectDetailResponse projects = new ProjectDetailResponse();
		try {
			projects.setProjectDetails(serviceTrackerService.getOperationalActProjectsCompleted(releaseId, serviceID));
			projects.setStatus(ServiceResponseStatus.SUCCESS);
			projects.setMessage(ServiceResponseStatus.SUCCESS.name());
			projects.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			projects.setStatus(ServiceResponseStatus.FAILURE);
			projects.setMessage("Unable get Operation Activities ProjectsCompleted");
			projects.setDescription(e.getMessage());
		}
		
		logger.info("End getOperationalActProjectsCompleted ");
		return projects;
	}
	
	@RequestMapping(value = "/dependency/service/tracker/product/activities/projects/inprogress/release/{releaseId}/service/{serviceID}", method = RequestMethod.GET)
	public ProjectTrackResponse getProductActPrjTrackProjectsInProgress(@PathVariable("releaseId") String releaseId,
			@PathVariable("serviceID") String serviceID) {
		logger.info("Start getProductActPrjTrackProjectsInProgress ");
		
		ProjectTrackResponse projects = new ProjectTrackResponse();
		try {
			projects.setProjectTrackDetails(serviceTrackerService.getProductActPrjTrackProjectsInProgress(releaseId, serviceID));
			projects.setStatus(ServiceResponseStatus.SUCCESS);
			projects.setMessage(ServiceResponseStatus.SUCCESS.name());
			projects.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			projects.setStatus(ServiceResponseStatus.FAILURE);
			projects.setMessage("Unable get Product Activities Project Track ProjectsInProgress");
			projects.setDescription(e.getMessage());
		}
		
		logger.info("End getProductActPrjTrackProjectsInProgress ");
		return projects;
	}
	
	@RequestMapping(value = "/dependency/service/tracker/product/activities/projects/unassigned/release/{releaseId}/service/{serviceID}", method = RequestMethod.GET)
	public ProjectTrackResponse getProductActPrjTrackProjectsUnassigned(@PathVariable("releaseId") String releaseId,
			@PathVariable("serviceID") String serviceID) {
		logger.info("Start getProductActPrjTrackProjectsUnassigned ");
		
		ProjectTrackResponse projects = new ProjectTrackResponse();
		try {
			projects.setProjectTrackDetails(serviceTrackerService.getProductActPrjTrackProjectsUnassigned(releaseId, serviceID));
			projects.setStatus(ServiceResponseStatus.SUCCESS);
			projects.setMessage(ServiceResponseStatus.SUCCESS.name());
			projects.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			projects.setStatus(ServiceResponseStatus.FAILURE);
			projects.setMessage("Unable get Product Activities Project Track ProjectsUnassigned");
			projects.setDescription(e.getMessage());
		}
		
		logger.info("End getProductActPrjTrackProjectsUnassigned ");
		return projects;
	}
	
	@RequestMapping(value = "/dependency/service/tracker/product/activities/projects/completed/release/{releaseId}/service/{serviceID}", method = RequestMethod.GET)
	public ProjectTrackResponse getProductActPrjTrackProjectsCompleted(@PathVariable("releaseId") String releaseId,
			@PathVariable("serviceID") String serviceID) {
		logger.info("Start getProductActPrjTrackProjectsUnassigned ");
		
		ProjectTrackResponse projects = new ProjectTrackResponse();
		try {
			projects.setProjectTrackDetails(serviceTrackerService.getProductActPrjTrackProjectsCompleted(releaseId, serviceID));
			projects.setStatus(ServiceResponseStatus.SUCCESS);
			projects.setMessage(ServiceResponseStatus.SUCCESS.name());
			projects.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			projects.setStatus(ServiceResponseStatus.FAILURE);
			projects.setMessage("Unable get Product Activities Project Track ProjectsCompleted");
			projects.setDescription(e.getMessage());
		}
		
		logger.info("End getProductActPrjTrackProjectsCompleted ");
		return projects;
	}
	
	@RequestMapping(value = "/dependency/service/tracker/product/activities/requirements/to/service/release/{releaseId}/service/{serviceID}", method = RequestMethod.GET)
	public ServiceRequirementResponse getProductActReqToService(@PathVariable("releaseId") String releaseId,
			@PathVariable("serviceID") String serviceID) {
		logger.info("Start getProductActReqToService ");
		
		ServiceRequirementResponse requirements = new ServiceRequirementResponse();
		try {
			requirements.setServiceRequirements(serviceTrackerService.getProductActReqToService(releaseId, serviceID));
			requirements.setStatus(ServiceResponseStatus.SUCCESS);
			requirements.setMessage(ServiceResponseStatus.SUCCESS.name());
			requirements.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			requirements.setStatus(ServiceResponseStatus.FAILURE);
			requirements.setMessage("Unable get Product Activities Requirement To Service");
			requirements.setDescription(e.getMessage());
		}
		
		logger.info("End getProductActReqToService ");
		return requirements;
	}
	
	@RequestMapping(value = "/dependency/service/tracker/product/activities/requirements/all/service/release/{releaseId}/service/{serviceID}", method = RequestMethod.GET)
	public ServiceRequirementResponse getProductActReqAcrossAllServices(@PathVariable("releaseId") String releaseId,
			@PathVariable("serviceID") String serviceID) {
		logger.info("Start getProductActReqAcrossAllServices ");
		
		ServiceRequirementResponse requirements = new ServiceRequirementResponse();
		try {
			requirements.setServiceRequirements(serviceTrackerService.getProductActReqAcrossAllServices(releaseId, serviceID));
			requirements.setStatus(ServiceResponseStatus.SUCCESS);
			requirements.setMessage(ServiceResponseStatus.SUCCESS.name());
			requirements.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			requirements.setStatus(ServiceResponseStatus.FAILURE);
			requirements.setMessage("Unable get Product Activities Requirement Across all Services");
			requirements.setDescription(e.getMessage());
		}
		
		logger.info("End getProductActReqAcrossAllServices ");
		return requirements;
	}
	
	@RequestMapping(value = "/dependency/service/tracker/detail/release/{releaseId}/service/{serviceID}", method = RequestMethod.GET)
	public ServiceTrackerDetailResponse getTotalProjectsAndReqOrCapabilities(@PathVariable("releaseId") String releaseId,
			@PathVariable("serviceID") String serviceID) {
		logger.info("Start getTotalProjectsAndReqOrCapabilities ");
		
		ServiceTrackerDetailResponse requirements = new ServiceTrackerDetailResponse();
		try {
			requirements.setServiceTrackerDetail(serviceTrackerService.getTotalProjectsAndReqOrCapabilities(releaseId, serviceID));
			requirements.setStatus(ServiceResponseStatus.SUCCESS);
			requirements.setMessage(ServiceResponseStatus.SUCCESS.name());
			requirements.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			requirements.setStatus(ServiceResponseStatus.FAILURE);
			requirements.setMessage("Unable get TotalProjectsAndReqOrCapabilities");
			requirements.setDescription(e.getMessage());
		}
		
		logger.info("End getProductActRegetTotalProjectsAndReqOrCapabilitiesqAcrossAllServices ");
		return requirements;
	}

}

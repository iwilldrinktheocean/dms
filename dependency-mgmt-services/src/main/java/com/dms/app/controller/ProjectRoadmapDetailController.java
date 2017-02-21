/**
 * 
 */
package com.dms.app.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dms.app.response.ApplicationDataResponse;
import com.dms.app.response.ProjectRoadmapDetailResponse;
import com.dms.app.response.tracker.ProjectDetailResponse;
import com.dms.app.response.tracker.ServiceNamesResponse;
import com.dms.app.service.ProjectRoadmapDetailService;
import com.dms.model.ServiceResponseStatus;

/**
 * @author Richa Prasad
 *
 */
@RestController
@RequestMapping("/projectRoadmapDetail")
public class ProjectRoadmapDetailController {

	private static final Logger logger = Logger.getLogger(ProjectRoadmapDetailController.class);
	
	@Autowired
	private ProjectRoadmapDetailService projectRoadmapDetailService;
	
	@RequestMapping(value = "/project/roadmap/detail/project/desc", method = RequestMethod.GET)
	public ProjectRoadmapDetailResponse getProjectDescription(@RequestParam("projectId") String projectId,
			@RequestParam("releaseId") String releaseId) {
		logger.info("Start getProjectDescription");
		
		ProjectRoadmapDetailResponse projectRoadmapDetail = new ProjectRoadmapDetailResponse();
		try {
			projectRoadmapDetail.setProjectRoadMapDetail(projectRoadmapDetailService.getProjectDescription(projectId, releaseId));
			projectRoadmapDetail.setStatus(ServiceResponseStatus.SUCCESS);
			projectRoadmapDetail.setMessage(ServiceResponseStatus.SUCCESS.name());
			projectRoadmapDetail.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			projectRoadmapDetail.setStatus(ServiceResponseStatus.FAILURE);
			projectRoadmapDetail.setMessage("Unable get ProjectDescription");
			projectRoadmapDetail.setDescription(e.getMessage());
		}
		logger.info("End getProjectDescription");
		return projectRoadmapDetail;
	}
	
	@RequestMapping(value = "/project/roadmap/detail/related/projects/list", method = RequestMethod.GET)
	public ProjectDetailResponse getRelatedProjects(@RequestParam("projectId") String projectId,
			@RequestParam("releaseId") String releaseId) {
		logger.info("Start getRelatedProjects");
		
		ProjectDetailResponse projects = new ProjectDetailResponse();
		try {
			projects.setProjectDetails(projectRoadmapDetailService.getRelatedProjects(projectId, releaseId));
			projects.setStatus(ServiceResponseStatus.SUCCESS);
			projects.setMessage(ServiceResponseStatus.SUCCESS.name());
			projects.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			projects.setStatus(ServiceResponseStatus.FAILURE);
			projects.setMessage("Unable get RelatedProjects");
			projects.setDescription(e.getMessage());
		}
		logger.info("End getRelatedProjects");
		return projects;
	}
	
	@RequestMapping(value = "/project/roadmap/detail/impacted/applications/list", method = RequestMethod.GET)
	public ApplicationDataResponse getImpactedApplications(@RequestParam("projectId") String projectId,
			@RequestParam("releaseId") String releaseId) {
		logger.info("Start getImpactedApplications");
		
		ApplicationDataResponse appData = new ApplicationDataResponse();
		try {
			appData.setApplicationData(projectRoadmapDetailService.getImpactedApplications(projectId, releaseId));
			appData.setStatus(ServiceResponseStatus.SUCCESS);
			appData.setMessage(ServiceResponseStatus.SUCCESS.name());
			appData.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			appData.setStatus(ServiceResponseStatus.FAILURE);
			appData.setMessage("Unable get ImpactedApplications");
			appData.setDescription(e.getMessage());
		}
		logger.info("End getImpactedApplications");
		return appData;
	}
	
	@RequestMapping(value = "/project/roadmap/detail/impacted/services/list", method = RequestMethod.GET)
	public ServiceNamesResponse getImpactedServices(@RequestParam("projectId") String projectId,
			@RequestParam("releaseId") String releaseId) {
		logger.info("Start getImpactedServices");
		
		ServiceNamesResponse services = new ServiceNamesResponse();
		try {
			services.setServiceDetails(projectRoadmapDetailService.getImpactedServices(projectId, releaseId));
			services.setStatus(ServiceResponseStatus.SUCCESS);
			services.setMessage(ServiceResponseStatus.SUCCESS.name());
			services.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			services.setStatus(ServiceResponseStatus.FAILURE);
			services.setMessage("Unable get ImpactedServices");
			services.setDescription(e.getMessage());
		}
		logger.info("End getImpactedServices");
		return services;
	}
}

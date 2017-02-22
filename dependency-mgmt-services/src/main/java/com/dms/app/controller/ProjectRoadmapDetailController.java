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

import com.dms.app.model.ServiceResponseStatus;
import com.dms.app.response.ApplicationDataResponse;
import com.dms.app.response.ProjectRoadmapDetailResponse;
import com.dms.app.response.ProjectRoadmapHistoryResponse;
import com.dms.app.response.tracker.ProjectDetailResponse;
import com.dms.app.response.tracker.ServiceNamesResponse;
import com.dms.app.service.ProjectRoadmapDetailService;

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
	
	@RequestMapping(value = "/project/roadmap/detail/project/desc/release/{releaseId}/project/{projectId}", method = RequestMethod.GET)
	public ProjectRoadmapDetailResponse getProjectDescription(@PathVariable(value = "releaseId") String releaseId,
			@PathVariable(value = "projectId") String projectId) {
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
	
	@RequestMapping(value = "/project/roadmap/detail/related/projects/release/{releaseId}/project/{projectId}", method = RequestMethod.GET)
	public ProjectDetailResponse getRelatedProjects(@PathVariable(value = "releaseId") String releaseId,
			@PathVariable(value = "projectId") String projectId) {
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
	
	@RequestMapping(value = "/project/roadmap/detail/impacted/applications/release/{releaseId}/project/{projectId}", method = RequestMethod.GET)
	public ApplicationDataResponse getImpactedApplications(@PathVariable(value = "releaseId") String releaseId,
			@PathVariable(value = "projectId") String projectId) {
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
	
	@RequestMapping(value = "/project/roadmap/detail/impacted/services/release/{releaseId}/project/{projectId}", method = RequestMethod.GET)
	public ServiceNamesResponse getImpactedServices(@PathVariable(value = "releaseId") String releaseId,
			@PathVariable(value = "projectId") String projectId) {
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
	
	@RequestMapping(value = "/project/roadmap/detail/other/comments/history/release/{releaseId}/project/{projectId}", method = RequestMethod.GET)
	public ProjectRoadmapHistoryResponse getOtherCommentsOrHistory(@PathVariable(value = "releaseId") String releaseId,
			@PathVariable(value = "projectId") String projectId) {
		logger.info("Start getOtherCommentsOrHistory");
		
		ProjectRoadmapHistoryResponse history = new ProjectRoadmapHistoryResponse();
		try {
			history.setProjectRoadMapDetails(projectRoadmapDetailService.getOtherCommentsOrHistory(projectId, releaseId));
			history.setStatus(ServiceResponseStatus.SUCCESS);
			history.setMessage(ServiceResponseStatus.SUCCESS.name());
			history.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			history.setStatus(ServiceResponseStatus.FAILURE);
			history.setMessage("Unable get OtherCommentsOrHistory");
			history.setDescription(e.getMessage());
		}
		logger.info("End getOtherCommentsOrHistory");
		return history;
	}
}

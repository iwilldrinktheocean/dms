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
import com.dms.app.response.BarChartResponse;
import com.dms.app.response.KnownDifferencesGapsResponse;
import com.dms.app.response.ReleaseRoadmapProgressResponse;
import com.dms.app.response.ReleaseStatusDetailResponse;
import com.dms.app.response.tracker.ProjectDetailResponse;
import com.dms.app.service.ReleaseRoadmapService;

/**
 * @author Richa Prasad
 *
 */
@RestController
@RequestMapping("/releaseRoadmap")
public class ReleaseRoadmapController {

	private static final Logger logger = Logger.getLogger(ReleaseRoadmapController.class);
	
	@Autowired
	private ReleaseRoadmapService releaseRoadmapService;
	
	@RequestMapping(value = "/release/roadmap/details/project/activities/release/{releaseId}", method = RequestMethod.GET)
	public ProjectDetailResponse getProjectActivities(@PathVariable("releaseId") String releaseNum) {
		logger.info("Start getProjectActivities");
		
		ProjectDetailResponse projects = new ProjectDetailResponse();
		try {
			projects.setProjectDetails(releaseRoadmapService.getProjectActivities(releaseNum));
			projects.setStatus(ServiceResponseStatus.SUCCESS);
			projects.setMessage(ServiceResponseStatus.SUCCESS.name());
			projects.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			projects.setStatus(ServiceResponseStatus.FAILURE);
			projects.setMessage("Unable get ProjectActivities");
			projects.setDescription(e.getMessage());
		}
		logger.info("End getProjectActivities");
		return projects;
	}
	
	@RequestMapping(value = "/release/roadmap/details/roadmap/progress/release/{releaseId}", method = RequestMethod.GET)
	public ReleaseRoadmapProgressResponse getReleaseRoadmapProgress(@PathVariable("releaseId") String releaseNum) {
		logger.info("Start getReleaseRoadmapProgress");
		
		ReleaseRoadmapProgressResponse progress = new ReleaseRoadmapProgressResponse();
		try {
			progress.setReleaseRoadmapProgress(releaseRoadmapService.getReleaseRoadmapProgress(releaseNum));
			progress.setStatus(ServiceResponseStatus.SUCCESS);
			progress.setMessage(ServiceResponseStatus.SUCCESS.name());
			progress.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			progress.setStatus(ServiceResponseStatus.FAILURE);
			progress.setMessage("Unable get ReleaseRoadmapProgress");
			progress.setDescription(e.getMessage());
		}
		logger.info("End getReleaseRoadmapProgress");
		return progress;
	}
	
	@RequestMapping(value = "/release/roadmap/details/release/status/release/{releaseId}", method = RequestMethod.GET)
	public ReleaseStatusDetailResponse getReleaseStatus(@PathVariable("releaseId") String releaseNum) {
		logger.info("Start getReleaseStatus");
		
		ReleaseStatusDetailResponse status = new ReleaseStatusDetailResponse();
		try {
			status.setReleaseStatusDetail(releaseRoadmapService.getReleaseStatus(releaseNum));
			status.setStatus(ServiceResponseStatus.SUCCESS);
			status.setMessage(ServiceResponseStatus.SUCCESS.name());
			status.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			status.setStatus(ServiceResponseStatus.FAILURE);
			status.setMessage("Unable get ReleaseStatus");
			status.setDescription(e.getMessage());
		}
		logger.info("End getReleaseStatus");
		return status;
	}
	
	@RequestMapping(value = "/release/roadmap/details/known/differences/gaps/release/{releaseId}", method = RequestMethod.GET)
	public KnownDifferencesGapsResponse getKnownDifferencesGaps(@PathVariable("releaseId") String releaseNum) {
		logger.info("Start getKnownDifferencesGaps");
		
		KnownDifferencesGapsResponse knownDifferencesGaps = new KnownDifferencesGapsResponse();
		try {
			knownDifferencesGaps.setKnownDifferencesGaps(releaseRoadmapService.getKnownDifferencesGaps(releaseNum));
			knownDifferencesGaps.setStatus(ServiceResponseStatus.SUCCESS);
			knownDifferencesGaps.setMessage(ServiceResponseStatus.SUCCESS.name());
			knownDifferencesGaps.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			knownDifferencesGaps.setStatus(ServiceResponseStatus.FAILURE);
			knownDifferencesGaps.setMessage("Unable get KnownDifferencesGaps");
			knownDifferencesGaps.setDescription(e.getMessage());
		}
		logger.info("End getKnownDifferencesGaps");
		return knownDifferencesGaps;
	}
	
	@RequestMapping(value = "/release/roadmap/details/budget/tracking/release/{releaseId}", method = RequestMethod.GET)
	public BarChartResponse getBudgetTracking(@PathVariable("releaseId") String releaseNum) {
		logger.info("Start getBudgetTracking");
		
		BarChartResponse budgetTracking = new BarChartResponse();
		try {
			budgetTracking.setChartData(releaseRoadmapService.getBudgetTracking(releaseNum));
			budgetTracking.setStatus(ServiceResponseStatus.SUCCESS);
			budgetTracking.setMessage(ServiceResponseStatus.SUCCESS.name());
			budgetTracking.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			budgetTracking.setStatus(ServiceResponseStatus.FAILURE);
			budgetTracking.setMessage("Unable get BudgetTracking");
			budgetTracking.setDescription(e.getMessage());
		}
		logger.info("End getBudgetTracking");
		return budgetTracking;
	}
	
	@RequestMapping(value = "/release/roadmap/details/resource/allocation/release/{releaseId}", method = RequestMethod.GET)
	public BarChartResponse getResourceAllocation(@PathVariable("releaseId") String releaseNum) {
		logger.info("Start getResourceAllocation");
		
		BarChartResponse resourceAllocation = new BarChartResponse();
		try {
			resourceAllocation.setChartData(releaseRoadmapService.getResourceAllocation(releaseNum));
			resourceAllocation.setStatus(ServiceResponseStatus.SUCCESS);
			resourceAllocation.setMessage(ServiceResponseStatus.SUCCESS.name());
			resourceAllocation.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			resourceAllocation.setStatus(ServiceResponseStatus.FAILURE);
			resourceAllocation.setMessage("Unable get ResourceAllocation");
			resourceAllocation.setDescription(e.getMessage());
		}
		logger.info("End getResourceAllocation");
		return resourceAllocation;
	}
	 
}

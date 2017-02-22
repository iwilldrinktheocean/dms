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
import com.dms.app.response.relationship.AppRelationshipBuilderResponse;
import com.dms.app.response.relationship.CapabilityRelationshipBuilderResponse;
import com.dms.app.response.relationship.DependencyRelationshipReportResponse;
import com.dms.app.response.relationship.ProcessRelationshipBuilderResponse;
import com.dms.app.response.relationship.ProjectRelationshipBuilderResponse;
import com.dms.app.response.relationship.ReleaseRelationshipBuilderResponse;
import com.dms.app.response.relationship.ServiceRelationshipBuilderResponse;
import com.dms.app.service.DependencyRelationshipService;

/**
 * @author Richa Prasad
 *
 */
@RestController
@RequestMapping("/dependencyRelBuilder")
public class DependencyRelationshipBuilderController {
	
	private static Logger logger = Logger.getLogger(DependencyRelationshipBuilderController.class);
	
	@Autowired
	private DependencyRelationshipService dependencyRelationshipService;
	
	@RequestMapping(value = "/summary/relationship", method = RequestMethod.GET)
	public DependencyRelationshipReportResponse getDepEndencyRelationshipReport() {
		logger.info("Start getDependencyRelationshipReport ");
		DependencyRelationshipReportResponse depEndencyRelationshipReport = null;
		try {
			depEndencyRelationshipReport = new DependencyRelationshipReportResponse();
			depEndencyRelationshipReport.setStatus(ServiceResponseStatus.SUCCESS);
			depEndencyRelationshipReport.setMessage(ServiceResponseStatus.SUCCESS.name());
			depEndencyRelationshipReport.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			depEndencyRelationshipReport = new DependencyRelationshipReportResponse();
			depEndencyRelationshipReport.setStatus(ServiceResponseStatus.FAILURE);
			depEndencyRelationshipReport.setMessage("Unable get ReleaseDependencyReport");
			depEndencyRelationshipReport.setDescription(e.getMessage());
		}
		logger.info("End of getDependencyRelationshipReport ");
		return depEndencyRelationshipReport;
	}
	
	@RequestMapping(value = "/summary/relationship/capability/release/{releaseId}", method = RequestMethod.GET)
	public CapabilityRelationshipBuilderResponse getCapabilityRelationship(@PathVariable("releaseId") String releaseNum) {
		logger.info("Start getCapabilityRelationship ");

		CapabilityRelationshipBuilderResponse capabilityRelationshipBuilder = null;
		try {
			capabilityRelationshipBuilder = dependencyRelationshipService.getCapabilityRelSummary(releaseNum);
			capabilityRelationshipBuilder.setStatus(ServiceResponseStatus.SUCCESS);
			capabilityRelationshipBuilder.setMessage(ServiceResponseStatus.SUCCESS.name());
			capabilityRelationshipBuilder.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			capabilityRelationshipBuilder = new CapabilityRelationshipBuilderResponse();
			capabilityRelationshipBuilder.setStatus(ServiceResponseStatus.FAILURE);
			capabilityRelationshipBuilder.setMessage("Unable get Capability Relationship Builder");
			capabilityRelationshipBuilder.setDescription(e.getMessage());
		}
		logger.info("End of getCapabilityRelationship ");
		return capabilityRelationshipBuilder;
	}
	
	@RequestMapping(value = "/summary/relationship/application/release/{releaseId}", method = RequestMethod.GET)
	public AppRelationshipBuilderResponse getApplicationRelationship(@PathVariable("releaseId") String releaseNum) {
		logger.info("Start getApplicationRelationship ");

		AppRelationshipBuilderResponse appRelationshipBuilder = null;
		try {
			appRelationshipBuilder = dependencyRelationshipService.getAppRelationshipSummary(releaseNum);
			appRelationshipBuilder.setStatus(ServiceResponseStatus.SUCCESS);
			appRelationshipBuilder.setMessage(ServiceResponseStatus.SUCCESS.name());
			appRelationshipBuilder.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			appRelationshipBuilder = new AppRelationshipBuilderResponse();
			appRelationshipBuilder.setStatus(ServiceResponseStatus.FAILURE);
			appRelationshipBuilder.setMessage("Unable get ApplicationRelationship");
			appRelationshipBuilder.setDescription(e.getMessage());
		}
		logger.info("End of getApplicationRelationship ");
		return appRelationshipBuilder;
	}
	
	@RequestMapping(value = "/summary/relationship/release/{releaseId}", method = RequestMethod.GET)
	public ReleaseRelationshipBuilderResponse getReleaseRelationship(@PathVariable("releaseId") String releaseNum) {
		logger.info("Start getReleaseRelationship ");

		ReleaseRelationshipBuilderResponse releaseRelationshipBuilder = null;
		try {
			releaseRelationshipBuilder = dependencyRelationshipService.getReleaseRelationshipSummary(releaseNum);
			releaseRelationshipBuilder.setStatus(ServiceResponseStatus.SUCCESS);
			releaseRelationshipBuilder.setMessage(ServiceResponseStatus.SUCCESS.name());
			releaseRelationshipBuilder.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			releaseRelationshipBuilder = new ReleaseRelationshipBuilderResponse();
			releaseRelationshipBuilder.setStatus(ServiceResponseStatus.FAILURE);
			releaseRelationshipBuilder.setMessage("Unable get Release Relationship Builder");
			releaseRelationshipBuilder.setDescription(e.getMessage());
		}
		logger.info("End of getReleaseRelationship ");
		return releaseRelationshipBuilder;
	}
	
	@RequestMapping(value = "/summary/relationship/process/release/{releaseId}", method = RequestMethod.GET)
	public ProcessRelationshipBuilderResponse getProcessRelationship(@PathVariable("releaseId") String releaseNum) {
		logger.info("Start getProcessRelationship ");

		ProcessRelationshipBuilderResponse processRelationshipBuilder = null;
		try {
			processRelationshipBuilder = dependencyRelationshipService.getProcessRelationshipSummary(releaseNum);
			processRelationshipBuilder.setStatus(ServiceResponseStatus.SUCCESS);
			processRelationshipBuilder.setMessage(ServiceResponseStatus.SUCCESS.name());
			processRelationshipBuilder.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			processRelationshipBuilder = new ProcessRelationshipBuilderResponse();
			processRelationshipBuilder.setStatus(ServiceResponseStatus.FAILURE);
			processRelationshipBuilder.setMessage("Unable get Process Relationship Builder");
			processRelationshipBuilder.setDescription(e.getMessage());
		}
		logger.info("End of getProcessRelationship ");
		return processRelationshipBuilder;
	}
	
	@RequestMapping(value = "/summary/relationship/project/release/{releaseId}", method = RequestMethod.GET)
	public ProjectRelationshipBuilderResponse getProjectRelationship(@PathVariable("releaseId") String releaseNum) {
		logger.info("Start getProjectRelationship ");

		ProjectRelationshipBuilderResponse projectRelationshipBuilder = null;
		try {
			projectRelationshipBuilder = dependencyRelationshipService.getProjectRelationshipSummary(releaseNum);
			projectRelationshipBuilder.setStatus(ServiceResponseStatus.SUCCESS);
			projectRelationshipBuilder.setMessage(ServiceResponseStatus.SUCCESS.name());
			projectRelationshipBuilder.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			projectRelationshipBuilder = new ProjectRelationshipBuilderResponse();
			projectRelationshipBuilder.setStatus(ServiceResponseStatus.FAILURE);
			projectRelationshipBuilder.setMessage("Unable get Project Relationship Builder");
			projectRelationshipBuilder.setDescription(e.getMessage());
		}
		logger.info("End of getProjectRelationship ");
		return projectRelationshipBuilder;
	}
	
	@RequestMapping(value = "/summary/relationship/services/release/{releaseId}", method = RequestMethod.GET)
	public ServiceRelationshipBuilderResponse getServicesRelationship(@PathVariable("releaseId") String releaseNum) {
		logger.info("Start getServicesRelationship ");

		ServiceRelationshipBuilderResponse serviceRelationshipBuilder = null;
		try {
			serviceRelationshipBuilder = dependencyRelationshipService.getServiceRelationshipSummary(releaseNum);
			serviceRelationshipBuilder.setStatus(ServiceResponseStatus.SUCCESS);
			serviceRelationshipBuilder.setMessage(ServiceResponseStatus.SUCCESS.name());
			serviceRelationshipBuilder.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			serviceRelationshipBuilder = new ServiceRelationshipBuilderResponse();
			serviceRelationshipBuilder.setStatus(ServiceResponseStatus.FAILURE);
			serviceRelationshipBuilder.setMessage("Unable get Services Relationship Builder");
			serviceRelationshipBuilder.setDescription(e.getMessage());
		}
		logger.info("End of getServicesRelationship ");
		return serviceRelationshipBuilder;
	}
}

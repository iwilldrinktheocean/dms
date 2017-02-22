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
import com.dms.app.response.AdministrationResponse;
import com.dms.app.response.DeliveryRoadMapResponse;
import com.dms.app.response.DependencyByServiceResponse;
import com.dms.app.response.DependencyMetricResponse;
import com.dms.app.response.DependencyRelationshipMgmtResponse;
import com.dms.app.response.ReleaseDependencyReportResponse;
import com.dms.app.response.ReleasesResponse;
import com.dms.app.response.ResourceAllocationResponse;
import com.dms.app.service.ReleaseDependencyService;

/**
 * @author Syam
 *
 */
@RestController
@RequestMapping("/releaseDependencyMgmt")
public class ReleaseDependencyMgmtController {
	private static Logger LOGGER = Logger.getLogger(ReleaseDependencyMgmtController.class);

	@Autowired
	private ReleaseDependencyService releaseDependencyService;

	@RequestMapping(value = "/summary/report", method = RequestMethod.GET)
	public ReleaseDependencyReportResponse getReleaseDependencyReport() {
		LOGGER.info("start getReleaseDependencyReport ");
		ReleaseDependencyReportResponse releaseDependencyReportResponse = null;
		try {
			releaseDependencyReportResponse = new ReleaseDependencyReportResponse();
			releaseDependencyReportResponse.setStatus(ServiceResponseStatus.SUCCESS);
			releaseDependencyReportResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			releaseDependencyReportResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			releaseDependencyReportResponse = new ReleaseDependencyReportResponse();
			releaseDependencyReportResponse.setStatus(ServiceResponseStatus.FAILURE);
			releaseDependencyReportResponse.setMessage("Unable get ReleaseDependencyReport");
			releaseDependencyReportResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getReleaseDependencyReport ");

		return releaseDependencyReportResponse;
	}

	@RequestMapping(value = "/summary/report/administration/release/{releaseNum}", method = RequestMethod.GET)
	public AdministrationResponse getAdministrationSummary(@PathVariable("releaseNum") String releaseNum) {
		LOGGER.info("start getReleaseDependencyReport ");
		AdministrationResponse administrationResponse = null;
		try {
			administrationResponse = releaseDependencyService.getAdministrationSummary(releaseNum);
			administrationResponse.setStatus(ServiceResponseStatus.SUCCESS);
			administrationResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			administrationResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			administrationResponse = new AdministrationResponse();
			administrationResponse.setStatus(ServiceResponseStatus.FAILURE);
			administrationResponse.setMessage("Unable get ReleaseDependencyReport");
			administrationResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getReleaseDependencyReport ");

		return administrationResponse;
	}
	
	
	@RequestMapping(value = "/summary/report/deliveryroadmap/release/{releaseId}", method = RequestMethod.GET)
	public DeliveryRoadMapResponse getDeliveryRoadMapSummary(@PathVariable("releaseId") String releaseId) {
		LOGGER.info("start getDeliveryRoadMapSummary ");
		DeliveryRoadMapResponse deliveryRoadMapResponse = null;
		try {
			deliveryRoadMapResponse = releaseDependencyService.getDeliveryRoadMapSummary(releaseId);
			deliveryRoadMapResponse.setStatus(ServiceResponseStatus.SUCCESS);
			deliveryRoadMapResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			deliveryRoadMapResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			deliveryRoadMapResponse = new DeliveryRoadMapResponse();
			deliveryRoadMapResponse.setStatus(ServiceResponseStatus.FAILURE);
			deliveryRoadMapResponse.setMessage("Unable get DeliveryRoadMapSummary");
			deliveryRoadMapResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getDeliveryRoadMapSummary ");

		return deliveryRoadMapResponse;
	}
	
	@RequestMapping(value = "/summary/report/resourceallocation/release/{releaseId}", method = RequestMethod.GET)
	public ResourceAllocationResponse getResourceAllocation(@PathVariable("releaseId") String releaseId) {
		LOGGER.info("start getResourceAllocation ");
		ResourceAllocationResponse resourceAllocationResponse=null;
		try {
			
			resourceAllocationResponse=releaseDependencyService.getResourceAllocationSummary(releaseId);
			resourceAllocationResponse.setStatus(ServiceResponseStatus.SUCCESS);
			resourceAllocationResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			resourceAllocationResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			resourceAllocationResponse = new ResourceAllocationResponse();
			resourceAllocationResponse.setStatus(ServiceResponseStatus.FAILURE);
			resourceAllocationResponse.setMessage("Unable get getResourceAllocation");
			resourceAllocationResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getResourceAllocation ");

		return resourceAllocationResponse;
	}
	
	@RequestMapping(value = "/summary/report/dependencyrelationship/release/{releaseId}", method = RequestMethod.GET)
	public DependencyRelationshipMgmtResponse getDependencyRelationshipMgmtSummary(@PathVariable("releaseId") String releaseId) {
		LOGGER.info("start getDependencyRelationshipMgmtSummary ");
		DependencyRelationshipMgmtResponse dependencyRelationshipMgmtResponse=null;
		try {
			
			dependencyRelationshipMgmtResponse=releaseDependencyService.getDependencyRelationshipMgmtSummary(releaseId);
			dependencyRelationshipMgmtResponse.setStatus(ServiceResponseStatus.SUCCESS);
			dependencyRelationshipMgmtResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			dependencyRelationshipMgmtResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			dependencyRelationshipMgmtResponse = new DependencyRelationshipMgmtResponse();
			dependencyRelationshipMgmtResponse.setStatus(ServiceResponseStatus.FAILURE);
			dependencyRelationshipMgmtResponse.setMessage("Unable get getDependencyRelationshipMgmtSummary");
			dependencyRelationshipMgmtResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getDependencyRelationshipMgmtSummary ");

		return dependencyRelationshipMgmtResponse;
	}
	
	@RequestMapping(value = "/summary/report/dependencybyservice/release/{releaseId}", method = RequestMethod.GET)
	public DependencyByServiceResponse getDependencyByServiceSummary(@PathVariable("releaseId") String releaseId) {
		LOGGER.info("start getDependencyByServiceSummary ");
		DependencyByServiceResponse dependencyByServiceResponse=null;
		try {
			
			dependencyByServiceResponse=releaseDependencyService.getDependencyByServiceSummary(releaseId);
			dependencyByServiceResponse.setStatus(ServiceResponseStatus.SUCCESS);
			dependencyByServiceResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			dependencyByServiceResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			dependencyByServiceResponse = new DependencyByServiceResponse();
			dependencyByServiceResponse.setStatus(ServiceResponseStatus.FAILURE);
			dependencyByServiceResponse.setMessage("Unable get getDependencyByServiceSummary");
			dependencyByServiceResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getDependencyByServiceSummary ");

		return dependencyByServiceResponse;
	}
	
	
	@RequestMapping(value = "/summary/report/dependencymetric/release/{releaseId}", method = RequestMethod.GET)
	public DependencyMetricResponse getDependencyMetricSummary(@PathVariable("releaseId") String releaseId) {
		LOGGER.info("start getDependencyMetricSummary ");
		DependencyMetricResponse dependencyMetricResponse=null;
		try {
			
			dependencyMetricResponse=releaseDependencyService.getDependencyMetricSummary(releaseId);
			dependencyMetricResponse.setStatus(ServiceResponseStatus.SUCCESS);
			dependencyMetricResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			dependencyMetricResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			dependencyMetricResponse = new DependencyMetricResponse();
			dependencyMetricResponse.setStatus(ServiceResponseStatus.FAILURE);
			dependencyMetricResponse.setMessage("Unable get getDependencyMetricSummary");
			dependencyMetricResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getDependencyMetricSummary ");

		return dependencyMetricResponse;
	}
	
	@RequestMapping(value = "/releases", method = RequestMethod.GET)
	public ReleasesResponse getReleases() {
		LOGGER.info("start getReleases");
		ReleasesResponse releasesResponse = new ReleasesResponse();
		try {
			releasesResponse.setReleaseDetails(releaseDependencyService.getReleaseDetails());
			releasesResponse.setStatus(ServiceResponseStatus.SUCCESS);
			releasesResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			releasesResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			releasesResponse.setStatus(ServiceResponseStatus.FAILURE);
			releasesResponse.setMessage("Unable get Releases");
			releasesResponse.setDescription(e.getMessage());
		}

		LOGGER.info("start getReleases");
		return releasesResponse;
	}

}

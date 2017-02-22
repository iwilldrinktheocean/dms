/**
 * 
 */
package com.dms.app.controller;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;

import com.dms.app.model.ServiceResponseStatus;
import com.dms.app.response.BusinessOwnerSummaryResponse;
import com.dms.app.response.CapabilityTypMgmtSummaryResponse;
import com.dms.app.response.OwnerTableMgmtSummaryResponse;
import com.dms.app.response.ReleaseMgmtSummaryResponse;
import com.dms.app.response.ServiceTableMgmtSummaryResponse;
import com.dms.app.service.ServiceMgmtService;


/**
 * @author SYAM
 *
 */
@Controller
public class ReferenceTableController {

	private static Logger LOGGER = Logger.getLogger(ReferenceTableController.class);
	
	@Autowired private ServiceMgmtService serviceMgmtService;
	
	
	@GET
	@Path("/summary/report/servicetable/release/{releaseId}")
	@Produces(MediaType.APPLICATION_JSON)
	public ServiceTableMgmtSummaryResponse getServiceTableMgmtSummary(@PathVariable("releaseId") String releaseId) {
		LOGGER.info("start getServiceTableMgmtSummary ");
		ServiceTableMgmtSummaryResponse serviceTableMgmtSummaryResponse=null;
		try {
			
			serviceTableMgmtSummaryResponse=serviceMgmtService.getServiceTableMgmtSummary(releaseId);
			serviceTableMgmtSummaryResponse.setStatus(ServiceResponseStatus.SUCCESS);
			serviceTableMgmtSummaryResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			serviceTableMgmtSummaryResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			serviceTableMgmtSummaryResponse = new ServiceTableMgmtSummaryResponse();
			serviceTableMgmtSummaryResponse.setStatus(ServiceResponseStatus.FAILURE);
			serviceTableMgmtSummaryResponse.setMessage("Unable get getServiceTableMgmtSummary");
			serviceTableMgmtSummaryResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getServiceTableMgmtSummary ");

		return serviceTableMgmtSummaryResponse;
	}
	
	@GET
	@Path("/summary/report/releasemanagement/release/{releaseId}")
	@Produces(MediaType.APPLICATION_JSON)
	public ReleaseMgmtSummaryResponse getReleaseManagementSummary(@PathVariable("releaseId") String releaseId) {
		LOGGER.info("start getReleaseManagementSummary ");
		ReleaseMgmtSummaryResponse releaseMgmtSummaryResponse=null;
		try {
			
			releaseMgmtSummaryResponse=serviceMgmtService.getReleaseManagementSummary(releaseId);
			releaseMgmtSummaryResponse.setStatus(ServiceResponseStatus.SUCCESS);
			releaseMgmtSummaryResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			releaseMgmtSummaryResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			releaseMgmtSummaryResponse = new ReleaseMgmtSummaryResponse();
			releaseMgmtSummaryResponse.setStatus(ServiceResponseStatus.FAILURE);
			releaseMgmtSummaryResponse.setMessage("Unable get ReleaseManagementSummary");
			releaseMgmtSummaryResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getReleaseManagementSummary ");

		return releaseMgmtSummaryResponse;
	}
	
	@GET
	@Path("/summary/report/capabilitytypemanagment/release/{releaseId}")
	@Produces(MediaType.APPLICATION_JSON)
	public CapabilityTypMgmtSummaryResponse getCapabilityTypeManagementSummary(@PathVariable("releaseId") String releaseId) {
		LOGGER.info("start getCapabilityTypeManagementSummary ");
		CapabilityTypMgmtSummaryResponse capabilityTypMgmtSummaryResponse=null;
		try {
			
			capabilityTypMgmtSummaryResponse=serviceMgmtService.getCapabilityTypeManagementSummary(releaseId);
			capabilityTypMgmtSummaryResponse.setStatus(ServiceResponseStatus.SUCCESS);
			capabilityTypMgmtSummaryResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			capabilityTypMgmtSummaryResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			capabilityTypMgmtSummaryResponse = new CapabilityTypMgmtSummaryResponse();
			capabilityTypMgmtSummaryResponse.setStatus(ServiceResponseStatus.FAILURE);
			capabilityTypMgmtSummaryResponse.setMessage("Unable get CapabilityTypeManagementSummary");
			capabilityTypMgmtSummaryResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getCapabilityTypeManagementSummary ");

		return capabilityTypMgmtSummaryResponse;
	}
	
	
	@GET
	@Path("/summary/report/ownertablemanagement/release/{releaseId}")
	@Produces(MediaType.APPLICATION_JSON)
	public OwnerTableMgmtSummaryResponse getOwnerTableManagementSummary(@PathVariable("releaseId") String releaseId) {
		LOGGER.info("start getOwnerTableManagementSummary ");
		OwnerTableMgmtSummaryResponse ownerTableMgmtSummaryResponse=null;
		try {
			
			ownerTableMgmtSummaryResponse=serviceMgmtService.getOwnerTableManagementSummary(releaseId);
			ownerTableMgmtSummaryResponse.setStatus(ServiceResponseStatus.SUCCESS);
			ownerTableMgmtSummaryResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			ownerTableMgmtSummaryResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			ownerTableMgmtSummaryResponse = new OwnerTableMgmtSummaryResponse();
			ownerTableMgmtSummaryResponse.setStatus(ServiceResponseStatus.FAILURE);
			ownerTableMgmtSummaryResponse.setMessage("Unable get OwnerTableManagementSummary");
			ownerTableMgmtSummaryResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getOwnerTableManagementSummary ");

		return ownerTableMgmtSummaryResponse;
	}
	
	
	@GET
	@Path("/summary/report/businessownermanagement/release/{releaseId}")
	@Produces(MediaType.APPLICATION_JSON)
	public BusinessOwnerSummaryResponse getBusinessOwnerManagementSummary(@PathVariable("releaseId") String releaseId) {
		LOGGER.info("start getBusinessOwnerManagementSummary ");
		BusinessOwnerSummaryResponse businessOwnerSummaryResponse=null;
		try {
			
			businessOwnerSummaryResponse=serviceMgmtService.getBusinessOwnerManagementSummary(releaseId);
			businessOwnerSummaryResponse.setStatus(ServiceResponseStatus.SUCCESS);
			businessOwnerSummaryResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			businessOwnerSummaryResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			businessOwnerSummaryResponse = new BusinessOwnerSummaryResponse();
			businessOwnerSummaryResponse.setStatus(ServiceResponseStatus.FAILURE);
			businessOwnerSummaryResponse.setMessage("Unable get BusinessOwnerManagementSummary");
			businessOwnerSummaryResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getBusinessOwnerManagementSummary ");

		return businessOwnerSummaryResponse;
	}
	
	

}

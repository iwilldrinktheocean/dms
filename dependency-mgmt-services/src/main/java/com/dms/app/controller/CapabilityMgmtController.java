package com.dms.app.controller;

import javax.ws.rs.PathParam;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.dms.app.response.CapabilitiesResponse;
import com.dms.app.response.CapabilityReportingResponse;
import com.dms.app.service.CapabilityMgmtService;
import com.dms.model.ServiceResponseStatus;

/**
 * 
 * @author Syam
 *
 */
@RestController
@RequestMapping("/capabilityMgmt")
public class CapabilityMgmtController {

	private static Logger LOGGER = Logger.getLogger(CapabilityMgmtController.class);

	@Autowired private CapabilityMgmtService capabilityMgmtService;

	
	@RequestMapping(value = "/report/capabilityreporting/capability/{capabilityId}", method = RequestMethod.GET)
	public CapabilityReportingResponse getCapabilityReporting(@PathParam("capabilityId") String capabilityId) {
		LOGGER.info("start getCapabilityReporting ");
		CapabilityReportingResponse capabilityReportingResponse=null;
		try {
			
			capabilityReportingResponse=capabilityMgmtService.getCapabilityReporting(capabilityId);
			capabilityReportingResponse.setStatus(ServiceResponseStatus.SUCCESS);
			capabilityReportingResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			capabilityReportingResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			capabilityReportingResponse = new CapabilityReportingResponse();
			capabilityReportingResponse.setStatus(ServiceResponseStatus.FAILURE);
			capabilityReportingResponse.setMessage("Unable get CapabilityReporting");
			capabilityReportingResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getCapabilityReporting ");

		return capabilityReportingResponse;
	}
	
	
	@RequestMapping(value = "/capabilities", method = RequestMethod.GET)
	public CapabilitiesResponse getCapabilities() {
		LOGGER.info("start getCapabilities ");
		CapabilitiesResponse capabilitiesResponse=null;
		try {
			
			capabilitiesResponse=capabilityMgmtService.getCapabilities();
			capabilitiesResponse.setStatus(ServiceResponseStatus.SUCCESS);
			capabilitiesResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			capabilitiesResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			capabilitiesResponse = new CapabilitiesResponse();
			capabilitiesResponse.setStatus(ServiceResponseStatus.FAILURE);
			capabilitiesResponse.setMessage("Unable get Capabilities");
			capabilitiesResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getCapabilities ");

		return capabilitiesResponse;
	}
}

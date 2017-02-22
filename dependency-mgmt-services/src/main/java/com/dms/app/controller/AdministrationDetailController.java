/**
 * 
 */
package com.dms.app.controller;

import javax.websocket.server.PathParam;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.dms.app.model.ServiceResponseStatus;
import com.dms.app.response.administration.ApplicationAdministrationResponse;
import com.dms.app.response.administration.CapabilitiesAdministrationResponse;
import com.dms.app.response.administration.ProcessAdministrationResponse;
import com.dms.app.response.administration.RequirementsAdministrationResponse;
import com.dms.app.response.administration.ResourceManagementResponse;
import com.dms.app.service.AdministrationDetailService;

/**
 * @author Richa Prasad
 *
 */
@RestController
@RequestMapping("/administrationDetail")
public class AdministrationDetailController {

	private static Logger logger = Logger.getLogger(AdministrationDetailController.class);
	
	@Autowired
	private AdministrationDetailService administrationDetailService;
	
	@RequestMapping(value = "/summary/administration/detail/capability/release/{releaseNum}", method = RequestMethod.GET)
	public CapabilitiesAdministrationResponse getCapabilityAdministrationDetail(@PathParam("releaseNum") String releaseNum) {
		logger.info("Start getCapabilityAdministrationDetail ");

		CapabilitiesAdministrationResponse capabilitiesAdministration = null;
		try {
			capabilitiesAdministration = administrationDetailService.getCapabilitiesAdministrationDetail(releaseNum);
			capabilitiesAdministration.setStatus(ServiceResponseStatus.SUCCESS);
			capabilitiesAdministration.setMessage(ServiceResponseStatus.SUCCESS.name());
			capabilitiesAdministration.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			capabilitiesAdministration = new CapabilitiesAdministrationResponse();
			capabilitiesAdministration.setStatus(ServiceResponseStatus.FAILURE);
			capabilitiesAdministration.setMessage("Unable get CapabilityAdministrationDetail");
			capabilitiesAdministration.setDescription(e.getMessage());
		}
		logger.info("End of getCapabilityAdministrationDetail ");
		return capabilitiesAdministration;
	}
	
	@RequestMapping(value = "/summary/administration/detail/application/release/{releaseNum}", method = RequestMethod.GET)
	public ApplicationAdministrationResponse getApplicationAdministrationDetail(@PathParam("releaseNum") String releaseNum) {
		logger.info("Start getApplicationAdministrationDetail ");

		ApplicationAdministrationResponse applicationAdministration = null;
		try {
			applicationAdministration = administrationDetailService.getApplicationAdministrationDetail(releaseNum);
			applicationAdministration.setStatus(ServiceResponseStatus.SUCCESS);
			applicationAdministration.setMessage(ServiceResponseStatus.SUCCESS.name());
			applicationAdministration.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			applicationAdministration = new ApplicationAdministrationResponse();
			applicationAdministration.setStatus(ServiceResponseStatus.FAILURE);
			applicationAdministration.setMessage("Unable get ApplicationAdministrationDetail");
			applicationAdministration.setDescription(e.getMessage());
		}
		logger.info("End of getApplicationAdministrationDetail ");
		return applicationAdministration;
	}
	
	@RequestMapping(value = "/summary/administration/detail/process/release/{releaseNum}", method = RequestMethod.GET)
	public ProcessAdministrationResponse getProcessAdministrationDetail(@PathParam("releaseNum") String releaseNum) {
		logger.info("Start getProcessAdministrationDetail ");

		ProcessAdministrationResponse processAdministration = null;
		try {
			processAdministration = administrationDetailService.getProcessAdministrationDetail(releaseNum);
			processAdministration.setStatus(ServiceResponseStatus.SUCCESS);
			processAdministration.setMessage(ServiceResponseStatus.SUCCESS.name());
			processAdministration.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			processAdministration = new ProcessAdministrationResponse();
			processAdministration.setStatus(ServiceResponseStatus.FAILURE);
			processAdministration.setMessage("Unable get ProcessAdministrationDetail");
			processAdministration.setDescription(e.getMessage());
		}
		logger.info("End of getProcessAdministrationDetail ");
		return processAdministration;
	}
	
	@RequestMapping(value = "/summary/administration/detail/requirements/release/{releaseNum}", method = RequestMethod.GET)
	public RequirementsAdministrationResponse getRequirementsAdministrationDetail(@PathParam("releaseNum") String releaseNum) {
		logger.info("Start getRequirementsAdministrationDetail ");

		RequirementsAdministrationResponse requirementsAdministration = null;
		try {
			requirementsAdministration = administrationDetailService.getRequirementsAdministrationDetail(releaseNum);
			requirementsAdministration.setStatus(ServiceResponseStatus.SUCCESS);
			requirementsAdministration.setMessage(ServiceResponseStatus.SUCCESS.name());
			requirementsAdministration.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			requirementsAdministration = new RequirementsAdministrationResponse();
			requirementsAdministration.setStatus(ServiceResponseStatus.FAILURE);
			requirementsAdministration.setMessage("Unable get RequirementsAdministrationDetail");
			requirementsAdministration.setDescription(e.getMessage());
		}
		logger.info("End of getRequirementsAdministrationDetail ");
		return requirementsAdministration;
	}
	
	@RequestMapping(value = "/summary/administration/resource/management/release/{releaseNum}", method = RequestMethod.GET)
	public ResourceManagementResponse getResourceMgmtAdministrationDetail(@PathParam("releaseNum") String releaseNum) {
		logger.info("Start getResourceMgmtAdministrationDetail ");

		ResourceManagementResponse resourceMgmtAdministration = null;
		try {
			resourceMgmtAdministration = administrationDetailService.getResourceManagementDetail(releaseNum);
			resourceMgmtAdministration.setStatus(ServiceResponseStatus.SUCCESS);
			resourceMgmtAdministration.setMessage(ServiceResponseStatus.SUCCESS.name());
			resourceMgmtAdministration.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			resourceMgmtAdministration = new ResourceManagementResponse();
			resourceMgmtAdministration.setStatus(ServiceResponseStatus.FAILURE);
			resourceMgmtAdministration.setMessage("Unable get ResourceMgmtAdministrationDetail");
			resourceMgmtAdministration.setDescription(e.getMessage());
		}
		logger.info("End of getResourceMgmtAdministrationDetail ");
		return resourceMgmtAdministration;
	}
}

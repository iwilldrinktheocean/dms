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
import com.dms.app.response.BudgetReportingResponse;
import com.dms.app.response.CapabilitiesOrRequirementsReportingResponse;
import com.dms.app.response.ConflictsReportingResponse;
import com.dms.app.response.DynamicReportingResponse;
import com.dms.app.response.FTERAllocationReportingResponse;
import com.dms.app.response.ProgramOrProjectReportingResponse;
import com.dms.app.service.DependencyReportingOrMetricService;

/**
 * @author Syam
 *
 */
@RestController
@RequestMapping("/dependencyMetricMgmt")
public class DependencyReportingOrMetricMgmtController {
	private static Logger LOGGER = Logger.getLogger(DependencyReportingOrMetricMgmtController.class);
	
	@Autowired 
	private DependencyReportingOrMetricService dependencyReportingOrMetricService;
	
	@RequestMapping(value = "/summary/report/dynamicreporting/release/{releaseId}", method = RequestMethod.GET)
	public DynamicReportingResponse getDynamicReportingSummary(@PathVariable("releaseId") String releaseId) {
		LOGGER.info("start getDynamicReportingSummary ");
		DynamicReportingResponse dynamicReportingResponse=null;
		try {
			
			dynamicReportingResponse=dependencyReportingOrMetricService.getDynamicReportingSummary(releaseId);
			dynamicReportingResponse.setStatus(ServiceResponseStatus.SUCCESS);
			dynamicReportingResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			dynamicReportingResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			dynamicReportingResponse = new DynamicReportingResponse();
			dynamicReportingResponse.setStatus(ServiceResponseStatus.FAILURE);
			dynamicReportingResponse.setMessage("Unable get DynamicReportingSummary");
			dynamicReportingResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getDynamicReportingSummary ");

		return dynamicReportingResponse;
	}
	
	@RequestMapping(value = "/summary/report/budgetreporting/release/{releaseId}", method = RequestMethod.GET)
	public BudgetReportingResponse getBudgetReportingSummary(@PathVariable("releaseId") String releaseId) {
		LOGGER.info("start getBudgetReportingSummary ");
		BudgetReportingResponse budgetReportingResponse=null;
		try {
			
			budgetReportingResponse=dependencyReportingOrMetricService.getBudgetReportingSummary(releaseId);
			budgetReportingResponse.setStatus(ServiceResponseStatus.SUCCESS);
			budgetReportingResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			budgetReportingResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			budgetReportingResponse = new BudgetReportingResponse();
			budgetReportingResponse.setStatus(ServiceResponseStatus.FAILURE);
			budgetReportingResponse.setMessage("Unable get BudgetReportingSummary");
			budgetReportingResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getBudgetReportingSummary ");

		return budgetReportingResponse;
	}
	
	@RequestMapping(value = "/summary/report/fteallocation/release/{releaseId}", method = RequestMethod.GET)
	public FTERAllocationReportingResponse getFTEAllocationReportingSummary(@PathVariable("releaseId") String releaseId) {
		LOGGER.info("start getFTEAllocationReportingSummary ");
		FTERAllocationReportingResponse fTERAllocationReportingResponse=null;
		try {
			
			fTERAllocationReportingResponse=dependencyReportingOrMetricService.getFTEAllocationReportingSummary(releaseId);
			fTERAllocationReportingResponse.setStatus(ServiceResponseStatus.SUCCESS);
			fTERAllocationReportingResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			fTERAllocationReportingResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			fTERAllocationReportingResponse = new FTERAllocationReportingResponse();
			fTERAllocationReportingResponse.setStatus(ServiceResponseStatus.FAILURE);
			fTERAllocationReportingResponse.setMessage("Unable get FTEAllocationReportingSummary");
			fTERAllocationReportingResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getFTEAllocationReportingSummary ");

		return fTERAllocationReportingResponse;
	}
	
	
	@RequestMapping(value = "/summary/report/dependencyConflict/release/{releaseId}", method = RequestMethod.GET)
	public ConflictsReportingResponse getDependencyConflictsReportingSummary(@PathVariable("releaseId") String releaseId) {
		LOGGER.info("start getDependencyConflictsReportingSummary ");
		ConflictsReportingResponse conflictsReportingResponse=null;
		try {
			
			conflictsReportingResponse=dependencyReportingOrMetricService.getDependencyConflictsReportingSummary(releaseId);
			conflictsReportingResponse.setStatus(ServiceResponseStatus.SUCCESS);
			conflictsReportingResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			conflictsReportingResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			conflictsReportingResponse = new ConflictsReportingResponse();
			conflictsReportingResponse.setStatus(ServiceResponseStatus.FAILURE);
			conflictsReportingResponse.setMessage("Unable get DependencyConflictsReportingSummary");
			conflictsReportingResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getDependencyConflictsReportingSummary ");

		return conflictsReportingResponse;
	}
	
	@RequestMapping(value = "/summary/report/programorprojectreporting/release/{releaseId}", method = RequestMethod.GET)
	public ProgramOrProjectReportingResponse getProgramOrProjectReportingSummary(@PathVariable("releaseId") String releaseId) {
		LOGGER.info("start getProgramOrProjectReportingSummary ");
		ProgramOrProjectReportingResponse programOrProjectReportingResponse=null;
		try {
			
			programOrProjectReportingResponse=dependencyReportingOrMetricService.getProgramOrProjectReportingSummary(releaseId);
			programOrProjectReportingResponse.setStatus(ServiceResponseStatus.SUCCESS);
			programOrProjectReportingResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			programOrProjectReportingResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			programOrProjectReportingResponse = new ProgramOrProjectReportingResponse();
			programOrProjectReportingResponse.setStatus(ServiceResponseStatus.FAILURE);
			programOrProjectReportingResponse.setMessage("Unable get getProgramOrProjectReportingSummary");
			programOrProjectReportingResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getProgramOrProjectReportingSummary ");

		return programOrProjectReportingResponse;
	}
	
	@RequestMapping(value = "/summary/report/capabilityORRequirements/release/{releaseId}", method = RequestMethod.GET)
	public CapabilitiesOrRequirementsReportingResponse getCapabilityOrRequirementsReportingSummary(@PathVariable("releaseId") String releaseId) {
		LOGGER.info("start getCapabilityOrRequirementsReportingSummary ");
		CapabilitiesOrRequirementsReportingResponse capabilitiesOrRequirementsReportingResponse=null;
		try {
			
			capabilitiesOrRequirementsReportingResponse=dependencyReportingOrMetricService.getCapabilityOrRequirementsReportingSummary(releaseId);
			capabilitiesOrRequirementsReportingResponse.setStatus(ServiceResponseStatus.SUCCESS);
			capabilitiesOrRequirementsReportingResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			capabilitiesOrRequirementsReportingResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			capabilitiesOrRequirementsReportingResponse = new CapabilitiesOrRequirementsReportingResponse();
			capabilitiesOrRequirementsReportingResponse.setStatus(ServiceResponseStatus.FAILURE);
			capabilitiesOrRequirementsReportingResponse.setMessage("Unable get getCapabilityOrRequirementsReportingSummary");
			capabilitiesOrRequirementsReportingResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getCapabilityOrRequirementsReportingSummary ");

		return capabilitiesOrRequirementsReportingResponse;
	}
	
	
	


}

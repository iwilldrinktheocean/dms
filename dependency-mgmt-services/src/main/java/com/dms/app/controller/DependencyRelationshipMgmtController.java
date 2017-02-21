/**
 * 
 */
package com.dms.app.controller;


import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.dms.app.response.relationship.DependencyRelationshipReportResponse;
import com.dms.model.ServiceResponseStatus;

/**
 * @author Syam
 *
 */
@RestController
@RequestMapping("/dependencyRelationshipMgmt")
public class DependencyRelationshipMgmtController {
	
	private static Logger logger = Logger.getLogger(DependencyRelationshipMgmtController.class);
	
	@RequestMapping(value = "/summary/relationship", method = RequestMethod.GET)
	public DependencyRelationshipReportResponse getDependencyRelationshipReport() {
		logger.info("Start getDependencyRelationshipReport ");
		DependencyRelationshipReportResponse dependencyRelationshipReport = null;
		try {
			dependencyRelationshipReport = new DependencyRelationshipReportResponse();
			dependencyRelationshipReport.setStatus(ServiceResponseStatus.SUCCESS);
			dependencyRelationshipReport.setMessage(ServiceResponseStatus.SUCCESS.name());
			dependencyRelationshipReport.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			logger.debug(e);
			dependencyRelationshipReport = new DependencyRelationshipReportResponse();
			dependencyRelationshipReport.setStatus(ServiceResponseStatus.FAILURE);
			dependencyRelationshipReport.setMessage("Unable get ReleaseDependencyReport");
			dependencyRelationshipReport.setDescription(e.getMessage());
		}
		logger.info("End of getDependencyRelationshipReport ");
		return dependencyRelationshipReport;
	}
}

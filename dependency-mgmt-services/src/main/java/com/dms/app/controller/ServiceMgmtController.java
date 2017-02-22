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
import com.dms.app.response.ServiceMaintenanceTableResponse;
import com.dms.app.service.ServiceMgmtService;

/**
 * @author Syam
 *
 */
@RestController
@RequestMapping("/serviceMgmt")
public class ServiceMgmtController {
	private static Logger LOGGER = Logger.getLogger(ServiceMgmtController.class);
	
	@Autowired 
	private ServiceMgmtService serviceMgmtService;
	
	@RequestMapping(value = "/report/servicemaintenancetable/release/{releaseId}", method = RequestMethod.GET)
	public ServiceMaintenanceTableResponse getServiceMaintenanceTableReport(@PathVariable("releaseId") String releaseId) {
		LOGGER.info("start getServiceMaintenanceTableReport ");
		ServiceMaintenanceTableResponse serviceMaintenanceTableResponse = null;
		try {
			serviceMaintenanceTableResponse = serviceMgmtService.getServiceMaintenanceTableReport(releaseId);
			serviceMaintenanceTableResponse.setStatus(ServiceResponseStatus.SUCCESS);
			serviceMaintenanceTableResponse.setMessage(ServiceResponseStatus.SUCCESS.name());
			serviceMaintenanceTableResponse.setDescription(ServiceResponseStatus.SUCCESS.name());
		} catch (Exception e) {
			LOGGER.debug(e);
			serviceMaintenanceTableResponse = new ServiceMaintenanceTableResponse();
			serviceMaintenanceTableResponse.setStatus(ServiceResponseStatus.FAILURE);
			serviceMaintenanceTableResponse.setMessage("Unable get ServiceMaintenanceTableReport");
			serviceMaintenanceTableResponse.setDescription(e.getMessage());
		}

		LOGGER.info("end of getServiceMaintenanceTableReport ");

		return serviceMaintenanceTableResponse;
	}

}

package com.dms.app.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.dms.app.connector.MySQLConnector;
import com.dms.app.response.UserResponse;
import com.dms.model.ServiceResponseStatus;

/**
 * 
 * @author Balaji S
 *
 */
@RestController
@RequestMapping("capabilityMgmt")
public class CapabilityMgmtController {

	private static Logger LOGGER = Logger.getLogger(CapabilityMgmtController.class);


	@Autowired
	private MySQLConnector mySQLConnector;

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public UserResponse testCapability() {
		UserResponse userResponse = new UserResponse();
		userResponse.setStatus(ServiceResponseStatus.SUCCESS);
		userResponse.setMessage(mySQLConnector.getConnection());

		return userResponse;
	}
}

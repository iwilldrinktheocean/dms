package com.dms.app.controller;

import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.dms.app.response.UserResponse;
import com.dms.app.service.UserService;
import com.dms.model.ServiceResponseStatus;
import com.dms.model.UserProfile;

/**
 * 
 * @author Balaji S
 *
 */
@Controller
public class UserMgmtController {

	private static Logger LOGGER = Logger.getLogger(UserMgmtController.class);

	@Autowired
	private UserService userService;

	@POST
	@Path("/createUserProfile")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public UserResponse createUserProfile(UserProfile userProfile) {
		long startTime = System.currentTimeMillis();
		LOGGER.info("START of the REST method createUserProfile()" + startTime);

		UserResponse userResponse = null;

		try {
			userResponse = userService.createUserProfile(userProfile);
		} catch (Exception e) {
			userResponse = new UserResponse();
			userResponse.setStatus(ServiceResponseStatus.FAILURE);
			userResponse.setMessage("Unable to create UserProfile!");
			userResponse.setDescription(e.getMessage());
		}

		long endTime = System.currentTimeMillis();
		LOGGER.info("END of the REST method createUserProfile()" + endTime);
		LOGGER.info(
				"Total time taken for the REST method createUserProfile()" + (endTime - startTime) + "milli seconds");
		return userResponse;
	}

	@POST
	@Path("/updateUserProfile")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public UserResponse updateUserProfile(UserProfile userProfile) {
		long startTime = System.currentTimeMillis();
		LOGGER.info("START of the REST method updateUserProfile()" + startTime);

		UserResponse userResponse = null;

		try {
			userResponse = userService.updateUserProfile(userProfile);
		} catch (Exception e) {
			userResponse = new UserResponse();
			userResponse.setStatus(ServiceResponseStatus.FAILURE);
			userResponse.setMessage("Unable to update UserProfile!");
			userResponse.setDescription(e.getMessage());
		}

		long endTime = System.currentTimeMillis();
		LOGGER.info("END of the REST method updateUserProfile()" + endTime);
		LOGGER.info(
				"Total time taken for the REST method updateUserProfile()" + (endTime - startTime) + "milli seconds");
		return userResponse;
	}

	@POST
	@Path("/findUserProfile")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	public UserResponse findUserProfile(@FormParam("userName") String userName,
			@FormParam("dbCollection") String dbCollection) {
		long startTime = System.currentTimeMillis();
		LOGGER.info("START of the REST method createUserProfile()" + startTime);

		UserResponse userResponse = null;

		try {
			userResponse = userService.getUserProfile(userName, dbCollection);
		} catch (Exception e) {
			userResponse = new UserResponse();
			userResponse.setStatus(ServiceResponseStatus.FAILURE);
			userResponse.setMessage("Unable to find UserProfile!");
			userResponse.setDescription(e.getMessage());
		}

		long endTime = System.currentTimeMillis();
		LOGGER.info("END of the REST method findUserProfile()" + endTime);
		LOGGER.info("Total time taken for the REST method findUserProfile()" + (endTime - startTime) + "milli seconds");
		return userResponse;
	}

	@POST
	@Path("/getUserProfiles")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	public UserResponse getUserProfiles(@FormParam("dbCollection") String dbCollection) {
		long startTime = System.currentTimeMillis();
		LOGGER.info("START of the REST method getUserProfiles()" + startTime);

		UserResponse userResponse = null;

		try {
			userResponse = userService.getUserProfiles(dbCollection);
		} catch (Exception e) {
			userResponse = new UserResponse();
			userResponse.setStatus(ServiceResponseStatus.FAILURE);
			userResponse.setMessage("Unable to get UserProfiles!");
			userResponse.setDescription(e.getMessage());
		}

		long endTime = System.currentTimeMillis();
		LOGGER.info("END of the REST method getUserProfiles()" + endTime);
		LOGGER.info("Total time taken for the REST method getUserProfiles()" + (endTime - startTime) + "milli seconds");
		return userResponse;
	}

	@POST
	@Path("/deleteUserProfile")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	public UserResponse deleteUserProfile(@FormParam("userName") String userName,
			@FormParam("dbCollection") String dbCollection) {
		long startTime = System.currentTimeMillis();
		LOGGER.info("START of the REST method deleteUserProfile()" + startTime);

		UserResponse userResponse = null;

		try {
			userResponse = userService.deleteUserProfile(userName, dbCollection);
		} catch (Exception e) {
			userResponse = new UserResponse();
			userResponse.setStatus(ServiceResponseStatus.FAILURE);
			userResponse.setMessage("Unable to delete UserProfile!");
			userResponse.setDescription(e.getMessage());
		}

		long endTime = System.currentTimeMillis();
		LOGGER.info("END of the REST method deleteUserProfile()" + endTime);
		LOGGER.info(
				"Total time taken for the REST method deleteUserProfile()" + (endTime - startTime) + "milli seconds");
		return userResponse;
	}

	@POST
	@Path("/deleteCollection")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	public UserResponse deleteCollection(@FormParam("dbCollection") String dbCollection) {
		long startTime = System.currentTimeMillis();
		LOGGER.info("START of the REST method deleteCollection()" + startTime);

		UserResponse userResponse = null;

		try {
			userResponse = userService.deleteCollection(dbCollection);
		} catch (Exception e) {
			userResponse = new UserResponse();
			userResponse.setStatus(ServiceResponseStatus.FAILURE);
			userResponse.setMessage("Unable to delete database collection!");
			userResponse.setDescription(e.getMessage());
		}

		long endTime = System.currentTimeMillis();
		LOGGER.info("END of the REST method deleteCollection()" + endTime);
		LOGGER.info(
				"Total time taken for the REST method deleteCollection()" + (endTime - startTime) + "milli seconds");
		return userResponse;
	}
}

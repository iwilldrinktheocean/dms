/**
 * 
 */
package com.dms.app.controller;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.dms.app.response.AdministrationResponse;
import com.dms.app.response.ReleaseDependencyReportResponse;
import com.dms.app.response.ReleasesResponse;
import com.dms.app.service.ReleaseDependencyService;
import com.dms.model.ServiceResponseStatus;

/**
 * @author PWC
 *
 */
@Controller
public class ReleaseDependencyMgmtController {
	private static Logger LOGGER = Logger.getLogger(ReleaseDependencyMgmtController.class);

	@Autowired
	private ReleaseDependencyService releaseDependencyService;

	@GET
	@Path("/summary/report")
	@Produces(MediaType.APPLICATION_JSON)
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

	@GET
	@Path("/summary/report/administration/release/{releaseNum}")
	@Produces(MediaType.APPLICATION_JSON)
	public AdministrationResponse getAdministrationSummary(@PathParam("releaseNum") String releaseNum) {
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

	@GET
	@Path("releases")
	@Produces(MediaType.APPLICATION_JSON)
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

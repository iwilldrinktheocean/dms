/**
 * 
 */
package com.dms.app.service;

import org.springframework.stereotype.Service;

import com.dms.app.response.administration.ApplicationAdministrationResponse;
import com.dms.app.response.administration.CapabilitiesAdministrationResponse;
import com.dms.app.response.administration.ProcessAdministrationResponse;
import com.dms.app.response.administration.RequirementsAdministrationResponse;
import com.dms.app.response.administration.ResourceManagementResponse;

/**
 * @author Richa Prasad
 *
 */
@Service
public interface AdministrationDetailService {

	public CapabilitiesAdministrationResponse getCapabilitiesAdministrationDetail(String releaseNum);
	
	public ApplicationAdministrationResponse getApplicationAdministrationDetail(String releaseNum);
	
	public ProcessAdministrationResponse getProcessAdministrationDetail(String releaseNum);
	
	public RequirementsAdministrationResponse getRequirementsAdministrationDetail(String releaseNum);
	
	public ResourceManagementResponse getResourceManagementDetail(String releaseNum);
}

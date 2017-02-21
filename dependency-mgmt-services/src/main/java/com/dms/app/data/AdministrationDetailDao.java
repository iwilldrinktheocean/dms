/**
 * 
 */
package com.dms.app.data;

import org.springframework.stereotype.Repository;

import com.dms.app.response.administration.ApplicationAdministrationResponse;
import com.dms.app.response.administration.CapabilitiesAdministrationResponse;
import com.dms.app.response.administration.ProcessAdministrationResponse;
import com.dms.app.response.administration.RequirementsAdministrationResponse;
import com.dms.app.response.administration.ResourceManagementResponse;

/**
 * @author Richa Prasad
 *
 */
@Repository
public interface AdministrationDetailDao {

	public CapabilitiesAdministrationResponse getCapabilitiesAdministration(String releaseNum);
	
	public ApplicationAdministrationResponse getApplicationAdministration(String releaseNum);
	
	public ProcessAdministrationResponse getProcessAdministration(String releaseNum);
	
	public RequirementsAdministrationResponse getRequirementsAdministration(String releaseNum);
	
	public ResourceManagementResponse getResourceManagement(String releaseNum);
}

/**
 * 
 */
package com.dms.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dms.app.data.AdministrationDetailDao;
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
@Service
public class AdministrationDetailServiceImpl implements AdministrationDetailService {

	@Autowired
	private AdministrationDetailDao administrationDetailDao;
	
	@Override
	public CapabilitiesAdministrationResponse getCapabilitiesAdministrationDetail(String releaseNum) {
		return administrationDetailDao.getCapabilitiesAdministration(releaseNum);
	}

	@Override
	public ApplicationAdministrationResponse getApplicationAdministrationDetail(String releaseNum) {
		return administrationDetailDao.getApplicationAdministration(releaseNum);
	}

	@Override
	public ProcessAdministrationResponse getProcessAdministrationDetail(String releaseNum) {
		return administrationDetailDao.getProcessAdministration(releaseNum);
	}

	@Override
	public RequirementsAdministrationResponse getRequirementsAdministrationDetail(String releaseNum) {
		return administrationDetailDao.getRequirementsAdministration(releaseNum);
	}

	@Override
	public ResourceManagementResponse getResourceManagementDetail(String releaseNum) {
		return administrationDetailDao.getResourceManagement(releaseNum);
	}

}

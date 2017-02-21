/**
 * 
 */
package com.dms.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dms.app.data.CapabilityMgmtDao;
import com.dms.app.response.CapabilitiesResponse;
import com.dms.app.response.CapabilityReportingResponse;
import com.dms.app.service.CapabilityMgmtService;

/**
 * @author Richa Prasad
 *
 */
@Service
public class CapabilityMgmtServiceImpl implements CapabilityMgmtService {
	@Autowired
	private CapabilityMgmtDao capabilityMgmtDao;

	@Override
	public CapabilityReportingResponse getCapabilityReporting(
			String capabilityId) {

		return capabilityMgmtDao.getCapabilityReporting(capabilityId);
	}

	@Override
	public CapabilitiesResponse getCapabilities() {
		return capabilityMgmtDao.getCapabilities();
	}

}

/**
 * 
 */
package com.dms.app.service;

import org.springframework.stereotype.Repository;

import com.dms.app.response.CapabilitiesResponse;
import com.dms.app.response.CapabilityReportingResponse;

/**
 * @author Richa Prasad
 *
 */
@Repository
public interface CapabilityMgmtService {

	public CapabilityReportingResponse getCapabilityReporting(String capabilityId);

	public CapabilitiesResponse getCapabilities();


}

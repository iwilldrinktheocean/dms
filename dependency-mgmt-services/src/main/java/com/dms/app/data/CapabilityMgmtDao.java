/**
 * 
 */
package com.dms.app.data;

import org.springframework.stereotype.Repository;

import com.dms.app.response.CapabilitiesResponse;
import com.dms.app.response.CapabilityReportingResponse;

/**
 * @author Syam
 *
 */
@Repository
public interface CapabilityMgmtDao {
	public CapabilityReportingResponse getCapabilityReporting(String capabilityId);
	public CapabilitiesResponse getCapabilities();
}

/**
 * 
 */
package com.dms.app.service;

import org.springframework.stereotype.Repository;

import com.dms.app.response.ServiceMaintenanceTableResponse;

/**
 * @author Richa Prasad
 *
 */
@Repository
public interface ServiceMgmtService {

	public ServiceMaintenanceTableResponse getServiceMaintenanceTableReport(
			String releaseId);

}

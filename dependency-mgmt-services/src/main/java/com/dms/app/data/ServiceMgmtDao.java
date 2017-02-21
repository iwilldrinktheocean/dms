/**
 * 
 */
package com.dms.app.data;

import org.springframework.stereotype.Repository;

import com.dms.app.response.ServiceMaintenanceTableResponse;

/**
 * @author Richa Prasad
 *
 */
@Repository
public interface ServiceMgmtDao {
	public ServiceMaintenanceTableResponse getServiceMaintenanceTableReport(
			String releaseId);
}

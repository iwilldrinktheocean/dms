/**
 * 
 */
package com.dms.app.data;

import org.springframework.stereotype.Repository;

import com.dms.app.response.ReleaseMgmtSummaryResponse;
import com.dms.app.response.BusinessOwnerSummaryResponse;
import com.dms.app.response.CapabilityTypMgmtSummaryResponse;
import com.dms.app.response.OwnerTableMgmtSummaryResponse;
import com.dms.app.response.ServiceMaintenanceTableResponse;
import com.dms.app.response.ServiceTableMgmtSummaryResponse;

/**
 * @author SYAM
 *
 */
@Repository
public interface ServiceMgmtDao {
	public ServiceMaintenanceTableResponse getServiceMaintenanceTableReport(
			String releaseId);
	public ServiceTableMgmtSummaryResponse getServiceTableMgmtSummary(
			String releaseId);

	public ReleaseMgmtSummaryResponse getReleaseManagementSummary(
			String releaseId);

	public CapabilityTypMgmtSummaryResponse getCapabilityTypeManagementSummary(
			String releaseId);

	public OwnerTableMgmtSummaryResponse getOwnerTableManagementSummary(
			String releaseId);

	public BusinessOwnerSummaryResponse getBusinessOwnerManagementSummary(
			String releaseId);

}

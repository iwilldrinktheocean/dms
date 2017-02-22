/**
 * 
 */
package com.dms.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dms.app.response.ReleaseMgmtSummaryResponse;
import com.dms.app.data.ServiceMgmtDao;
import com.dms.app.response.BusinessOwnerSummaryResponse;
import com.dms.app.response.CapabilityTypMgmtSummaryResponse;
import com.dms.app.response.OwnerTableMgmtSummaryResponse;
import com.dms.app.response.ServiceMaintenanceTableResponse;
import com.dms.app.response.ServiceTableMgmtSummaryResponse;
import com.dms.app.service.ServiceMgmtService;

/**
 * @author PWC
 *
 */
@Service
public class ServiceMgmtServiceImpl implements ServiceMgmtService {
	@Autowired private ServiceMgmtDao serviceMgmtDao;
	@Override
	public ServiceMaintenanceTableResponse getServiceMaintenanceTableReport(
			String releaseId) {
		return serviceMgmtDao.getServiceMaintenanceTableReport(releaseId);
	}
	@Override
	public ServiceTableMgmtSummaryResponse getServiceTableMgmtSummary(
			String releaseId) {
		return serviceMgmtDao.getServiceTableMgmtSummary(releaseId);
	}
	@Override
	public ReleaseMgmtSummaryResponse getReleaseManagementSummary(
			String releaseId) {
		return serviceMgmtDao.getReleaseManagementSummary(releaseId);
	}
	@Override
	public CapabilityTypMgmtSummaryResponse getCapabilityTypeManagementSummary(
			String releaseId) {
		return serviceMgmtDao.getCapabilityTypeManagementSummary(releaseId);
	}
	@Override
	public OwnerTableMgmtSummaryResponse getOwnerTableManagementSummary(
			String releaseId) {
		return serviceMgmtDao.getOwnerTableManagementSummary(releaseId);
	}
	@Override
	public BusinessOwnerSummaryResponse getBusinessOwnerManagementSummary(
			String releaseId) {
		return serviceMgmtDao.getBusinessOwnerManagementSummary(releaseId);
	}


}

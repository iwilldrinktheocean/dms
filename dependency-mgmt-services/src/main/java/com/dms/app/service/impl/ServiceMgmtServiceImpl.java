/**
 * 
 */
package com.dms.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dms.app.data.ServiceMgmtDao;
import com.dms.app.response.ServiceMaintenanceTableResponse;
import com.dms.app.service.ServiceMgmtService;

/**
 * @author Richa Prasad
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


}

/**
 * 
 */
package com.dms.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dms.app.data.ReleaseDependencyDao;
import com.dms.app.response.AdministrationResponse;
import com.dms.app.response.DeliveryRoadMapResponse;
import com.dms.app.response.DependencyByServiceResponse;
import com.dms.app.response.DependencyMetricResponse;
import com.dms.app.response.DependencyRelationshipMgmtResponse;
import com.dms.app.response.ResourceAllocationResponse;
import com.dms.app.service.ReleaseDependencyService;
import com.dms.model.ReleaseDetail;

/**
 * @author Richa Prasad
 *
 */
@Service("releaseDependencyService")
public class ReleaseDependencyServiceImpl implements ReleaseDependencyService{

	@Autowired
	private ReleaseDependencyDao releaseDependencyDao;

	@Override
	public List<ReleaseDetail> getReleaseDetails() {
		return releaseDependencyDao.getReleaseDetails();
	}

	@Override
	public AdministrationResponse getAdministrationSummary(String releaseNum) {
		return releaseDependencyDao.getAdministrationSummary(releaseNum);
	}

	@Override
	public DeliveryRoadMapResponse getDeliveryRoadMapSummary(String releaseId) {
		return releaseDependencyDao.getDeliveryRoadMapSummary(releaseId);
	}

	@Override
	public ResourceAllocationResponse getResourceAllocationSummary(
			String releaseId) {
		return releaseDependencyDao.getResourceAllocationSummary(releaseId);
	}

	@Override
	public DependencyRelationshipMgmtResponse getDependencyRelationshipMgmtSummary(
			String releaseId) {
		return releaseDependencyDao.getDependencyRelationshipMgmtSummary(releaseId);
	}

	@Override
	public DependencyByServiceResponse getDependencyByServiceSummary(
			String releaseId) {
		return releaseDependencyDao.getDependencyByServiceSummary(releaseId);
	}

	@Override
	public DependencyMetricResponse getDependencyMetricSummary(String releaseId) {
		return releaseDependencyDao.getDependencyMetricSummary(releaseId);
	}

}

/**
 * 
 */
package com.dms.app.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.dms.app.model.ReleaseDetail;
import com.dms.app.response.AdministrationResponse;
import com.dms.app.response.DeliveryRoadMapResponse;
import com.dms.app.response.DependencyByServiceResponse;
import com.dms.app.response.DependencyMetricResponse;
import com.dms.app.response.DependencyRelationshipMgmtResponse;
import com.dms.app.response.ResourceAllocationResponse;

/**
 * @author Richa Prasad
 *
 */
@Service
public interface ReleaseDependencyService {
	public List<ReleaseDetail> getReleaseDetails();
	public AdministrationResponse getAdministrationSummary(String releaseNum);
	public DeliveryRoadMapResponse getDeliveryRoadMapSummary(String releaseId);
	public ResourceAllocationResponse getResourceAllocationSummary(String releaseId);
	public DependencyRelationshipMgmtResponse getDependencyRelationshipMgmtSummary(String releaseId);
	public DependencyByServiceResponse getDependencyByServiceSummary(String releaseId);
	public DependencyMetricResponse getDependencyMetricSummary(String releaseId);
}

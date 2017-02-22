/**
 * 
 */
package com.dms.app.data;

import java.util.List;

import org.springframework.stereotype.Repository;

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
@Repository
public interface ReleaseDependencyDao {
	public List<ReleaseDetail> getReleaseDetails();
	public AdministrationResponse getAdministrationSummary(String releaseNum);
	public DeliveryRoadMapResponse getDeliveryRoadMapSummary(String releaseId);
	public ResourceAllocationResponse getResourceAllocationSummary(String releaseId);
	public DependencyRelationshipMgmtResponse getDependencyRelationshipMgmtSummary(String releaseId);
	public DependencyByServiceResponse getDependencyByServiceSummary(String releaseId);
	public DependencyMetricResponse getDependencyMetricSummary(String releaseId);
}

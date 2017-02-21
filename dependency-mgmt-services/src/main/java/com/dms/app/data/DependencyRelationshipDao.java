/**
 * 
 */
package com.dms.app.data;

import org.springframework.stereotype.Repository;

import com.dms.app.response.relationship.AppRelationshipBuilderResponse;
import com.dms.app.response.relationship.CapabilityRelationshipBuilderResponse;
import com.dms.app.response.relationship.ProcessRelationshipBuilderResponse;
import com.dms.app.response.relationship.ProjectRelationshipBuilderResponse;
import com.dms.app.response.relationship.ReleaseRelationshipBuilderResponse;
import com.dms.app.response.relationship.ServiceRelationshipBuilderResponse;

/**
 * @author Syam
 *
 */
@Repository
public interface DependencyRelationshipDao {
	
	public CapabilityRelationshipBuilderResponse getCapabilityRelSummary(String releaseNum);
	
	public AppRelationshipBuilderResponse getAppRelationshipSummary(String releaseNum);
	
	public ReleaseRelationshipBuilderResponse getReleaseRelationshipSummary(String releaseNum);
	
	public ProcessRelationshipBuilderResponse getProcessRelationshipSummary(String releaseNum);
	
	public ProjectRelationshipBuilderResponse getProjectRelationshipSummary(String releaseNum);
	
	public ServiceRelationshipBuilderResponse getServiceRelationshipSummary(String releaseNum);
}

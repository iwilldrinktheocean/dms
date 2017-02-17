/**
 * 
 */
package com.dms.app.service;

import org.springframework.stereotype.Service;

import com.dms.app.response.relationship.AppRelationshipBuilderResponse;
import com.dms.app.response.relationship.CapabilityRelationshipBuilderResponse;
import com.dms.app.response.relationship.ProcessRelationshipBuilderResponse;
import com.dms.app.response.relationship.ProjectRelationshipBuilderResponse;
import com.dms.app.response.relationship.ReleaseRelationshipBuilderResponse;
import com.dms.app.response.relationship.ServiceRelationshipBuilderResponse;

/**
 * @author PWC
 *
 */
@Service
public interface DependencyRelationshipService {

	public CapabilityRelationshipBuilderResponse getCapabilityRelSummary(String releaseNum);
	
	public AppRelationshipBuilderResponse getAppRelationshipSummary(String releaseNum);
	
	public ReleaseRelationshipBuilderResponse getReleaseRelationshipSummary(String releaseNum);
	
	public ProcessRelationshipBuilderResponse getProcessRelationshipSummary(String releaseNum);
	
	public ProjectRelationshipBuilderResponse getProjectRelationshipSummary(String releaseNum);
	
	public ServiceRelationshipBuilderResponse getServiceRelationshipSummary(String releaseNum);
}

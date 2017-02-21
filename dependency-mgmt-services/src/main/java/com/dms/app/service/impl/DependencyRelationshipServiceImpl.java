/**
 * 
 */
package com.dms.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dms.app.data.DependencyRelationshipDao;
import com.dms.app.response.relationship.AppRelationshipBuilderResponse;
import com.dms.app.response.relationship.CapabilityRelationshipBuilderResponse;
import com.dms.app.response.relationship.ProcessRelationshipBuilderResponse;
import com.dms.app.response.relationship.ProjectRelationshipBuilderResponse;
import com.dms.app.response.relationship.ReleaseRelationshipBuilderResponse;
import com.dms.app.response.relationship.ServiceRelationshipBuilderResponse;
import com.dms.app.service.DependencyRelationshipService;

/**
 * @author Richa Prasad
 *
 */
@Service
public class DependencyRelationshipServiceImpl implements DependencyRelationshipService {

	@Autowired
	private DependencyRelationshipDao dependencyRelationshipDao;

	@Override
	public CapabilityRelationshipBuilderResponse getCapabilityRelSummary(String releaseNum) {
		return dependencyRelationshipDao.getCapabilityRelSummary(releaseNum);
	}

	@Override
	public AppRelationshipBuilderResponse getAppRelationshipSummary(String releaseNum) {
		return dependencyRelationshipDao.getAppRelationshipSummary(releaseNum);
	}

	@Override
	public ReleaseRelationshipBuilderResponse getReleaseRelationshipSummary(String releaseNum) {
		return dependencyRelationshipDao.getReleaseRelationshipSummary(releaseNum);
	}

	@Override
	public ProcessRelationshipBuilderResponse getProcessRelationshipSummary(String releaseNum) {
		return dependencyRelationshipDao.getProcessRelationshipSummary(releaseNum);
	}

	@Override
	public ProjectRelationshipBuilderResponse getProjectRelationshipSummary(String releaseNum) {
		return dependencyRelationshipDao.getProjectRelationshipSummary(releaseNum);
	}

	@Override
	public ServiceRelationshipBuilderResponse getServiceRelationshipSummary(String releaseNum) {
		return dependencyRelationshipDao.getServiceRelationshipSummary(releaseNum);
	}

}

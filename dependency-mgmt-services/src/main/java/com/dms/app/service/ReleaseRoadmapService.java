/**
 * 
 */
package com.dms.app.service;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.stereotype.Service;

import com.dms.app.model.KnownDifferencesGaps;
import com.dms.app.model.ProjectDetail;
import com.dms.app.model.ReleaseStatusDetail;

/**
 * @author Richa Prasad
 *
 */
@Service
public interface ReleaseRoadmapService {

	public List<ProjectDetail> getProjectActivities(String releaseNum);
	
	public BigDecimal getReleaseRoadmapProgress(String releaseNum);
	
	public ReleaseStatusDetail getReleaseStatus(String releaseNum);
	
	public KnownDifferencesGaps getKnownDifferencesGaps(String releaseNum);
	
	public List<Long> getBudgetTracking(String releaseNum);
	
	public List<Long> getResourceAllocation(String releaseNum);
}

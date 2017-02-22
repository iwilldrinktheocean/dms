/**
 * 
 */
package com.dms.app.data;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.dms.app.model.KnownDifferencesGaps;
import com.dms.app.model.ProjectDetail;
import com.dms.app.model.ReleaseStatusDetail;

/**
 * @author Richa Prasad
 *
 */
@Repository
public interface ReleaseRoadmapDao {

	public List<ProjectDetail> getProjectActivities(String releaseNum);
	
	public BigDecimal getReleaseRoadmapProgress(String releaseNum);
	
	public ReleaseStatusDetail getReleaseStatus(String releaseNum);
	
	public KnownDifferencesGaps getKnownDifferencesGaps(String releaseNum);
	
	public List<Long> getBudgetTracking(String releaseNum);
	
	public List<Long> getResourceAllocation(String releaseNum);
}

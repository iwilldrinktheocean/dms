/**
 * 
 */
package com.dms.app.service.impl;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dms.app.data.BaseDao;
import com.dms.app.data.ReleaseRoadmapDao;
import com.dms.app.service.ReleaseRoadmapService;
import com.dms.model.KnownDifferencesGaps;
import com.dms.model.ProjectDetail;
import com.dms.model.ReleaseStatusDetail;

/**
 * @author Richa Prasad
 *
 */
@Service
public class ReleaseRoadmapServiceImpl extends BaseDao implements ReleaseRoadmapService {

	@Autowired
	private ReleaseRoadmapDao releaseRoadmapDao;
	
	@Override
	public List<ProjectDetail> getProjectActivities(String releaseNum) {
		return releaseRoadmapDao.getProjectActivities(releaseNum);
	}

	@Override
	public BigDecimal getReleaseRoadmapProgress(String releaseNum) {
		return releaseRoadmapDao.getReleaseRoadmapProgress(releaseNum);
	}

	@Override
	public ReleaseStatusDetail getReleaseStatus(String releaseNum) {
		return releaseRoadmapDao.getReleaseStatus(releaseNum);
	}

	@Override
	public KnownDifferencesGaps getKnownDifferencesGaps(String releaseNum) {
		return releaseRoadmapDao.getKnownDifferencesGaps(releaseNum);
	}

	@Override
	public List<Long> getBudgetTracking(String releaseNum) {
		return releaseRoadmapDao.getBudgetTracking(releaseNum);
	}

	@Override
	public List<Long> getResourceAllocation(String releaseNum) {
		return releaseRoadmapDao.getResourceAllocation(releaseNum);
	}

}

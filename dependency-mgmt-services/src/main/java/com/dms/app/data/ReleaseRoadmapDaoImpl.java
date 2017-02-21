/**
 * 
 */
package com.dms.app.data;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

import com.dms.app.data.mappers.KnownDifferencesGapsRowMapper;
import com.dms.app.data.mappers.ReleaseStatusDetailRowMapper;
import com.dms.app.data.mappers.tracker.ProjectDetailRowMapper;
import com.dms.model.KnownDifferencesGaps;
import com.dms.model.ProjectDetail;
import com.dms.model.ReleaseStatusDetail;

/**
 * @author Richa Prasad
 *
 */
@Repository
public class ReleaseRoadmapDaoImpl extends BaseDao implements ReleaseRoadmapDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<ProjectDetail> getProjectActivities(String releaseNum) {
		SimpleJdbcCall procPrjAct = new SimpleJdbcCall(getJdbcTemplate());
		
		procPrjAct.withProcedureName("release_roadmap_project_activites")	
		.returningResultSet("projectDetails", new ProjectDetailRowMapper())
		.declareParameters(new SqlParameter("In_ReleaseNum", Types.DECIMAL));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseNum);

		Map<String, Object> data = procPrjAct.execute(input);
		
		List<ProjectDetail> projectDetails = (List<ProjectDetail>) data.get("projectDetails");
		return projectDetails;
	}

	@SuppressWarnings("unchecked")
	@Override
	public BigDecimal getReleaseRoadmapProgress(String releaseNum) {
		SimpleJdbcCall procRoadmapProgress = new SimpleJdbcCall(getJdbcTemplate());
		
		procRoadmapProgress.withProcedureName("release_roadmap_progress");	
		
		procRoadmapProgress.returningResultSet("progress", new RowMapper<BigDecimal>() {

			@Override
			public BigDecimal mapRow(ResultSet rs, int rowNum) throws SQLException {
				return rs.getBigDecimal("PROGRESS");
			}
		});	
		
		procRoadmapProgress.declareParameters(new SqlParameter("In_ReleaseNum", Types.DECIMAL));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseNum);

		Map<String, Object> data = procRoadmapProgress.execute(input);
		
		List<BigDecimal> progressList = (List<BigDecimal>) data.get("progress");
		return progressList.get(0);
	}

	@SuppressWarnings("unchecked")
	@Override
	public ReleaseStatusDetail getReleaseStatus(String releaseNum) {
		SimpleJdbcCall procReleaseStatus = new SimpleJdbcCall(getJdbcTemplate());
		
		procReleaseStatus.withProcedureName("release_roadmap_release_status")	
		.returningResultSet("status", new ReleaseStatusDetailRowMapper())
		.declareParameters(new SqlParameter("In_ReleaseNum", Types.DECIMAL));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseNum);

		Map<String, Object> data = procReleaseStatus.execute(input);
		
		List<ReleaseStatusDetail> statusList = (List<ReleaseStatusDetail>) data.get("status");
		return statusList.get(0);
	}

	@SuppressWarnings("unchecked")
	@Override
	public KnownDifferencesGaps getKnownDifferencesGaps(String releaseNum) {
		SimpleJdbcCall procknownGaps = new SimpleJdbcCall(getJdbcTemplate());
		
		procknownGaps.withProcedureName("release_roadmap_known_gaps")	
		.returningResultSet("gaps", new KnownDifferencesGapsRowMapper())
		.declareParameters(new SqlParameter("In_ReleaseNum", Types.DECIMAL));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseNum);

		Map<String, Object> data = procknownGaps.execute(input);
		
		List<KnownDifferencesGaps> gaps = (List<KnownDifferencesGaps>) data.get("gaps");
		return gaps.get(0);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Long> getBudgetTracking(String releaseNum) {
		SimpleJdbcCall procBudgetTracking = new SimpleJdbcCall(getJdbcTemplate());
		
		procBudgetTracking.withProcedureName("release_roadmap_budget_tracking")	
						.returningResultSet("budgetTracking", new RowMapper<Long>() {

			@Override
			public Long mapRow(ResultSet rs, int rowNum) throws SQLException {
				return rs.getLong("BUDGET_TRACKING");
			}
		});
		
		procBudgetTracking.declareParameters(new SqlParameter("In_ReleaseNum", Types.DECIMAL));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseNum);

		Map<String, Object> data = procBudgetTracking.execute(input);
		
		List<Long> budgetTracking = (List<Long>) data.get("budgetTracking");
		return budgetTracking;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Long> getResourceAllocation(String releaseNum) {
		SimpleJdbcCall procResourceAllocation = new SimpleJdbcCall(getJdbcTemplate());
		
		procResourceAllocation.withProcedureName("release_roadmap_resource_allocation")	
		.returningResultSet("resourceAllocation", new RowMapper<Long>() {

			@Override
			public Long mapRow(ResultSet rs, int rowNum) throws SQLException {
				return rs.getLong("RESOURCE_ALLOCATION");
			}
		});
		
		procResourceAllocation.declareParameters(new SqlParameter("In_ReleaseNum", Types.DECIMAL));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseNum);

		Map<String, Object> data = procResourceAllocation.execute(input);
		
		List<Long> resourceAllocation = (List<Long>) data.get("resourceAllocation");
		return resourceAllocation;
	}

}

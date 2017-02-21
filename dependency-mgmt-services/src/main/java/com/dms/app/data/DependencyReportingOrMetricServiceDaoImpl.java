/**
 * 
 */
package com.dms.app.data;

import java.sql.Types;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Component;

import com.dms.app.data.mappers.BudgetReportingResponseRowMapper;
import com.dms.app.data.mappers.CapabilitiesOrRequirementsReportingResponseRowMapper;
import com.dms.app.data.mappers.ConflictsReportingResponseRowMapper;
import com.dms.app.data.mappers.DynamicReportingResponseRowMapper;
import com.dms.app.data.mappers.FTERAllocationReportingResponseRowMapper;
import com.dms.app.data.mappers.ProgramOrProjectReportingResponseRowMapper;
import com.dms.app.response.BudgetReportingResponse;
import com.dms.app.response.CapabilitiesOrRequirementsReportingResponse;
import com.dms.app.response.ConflictsReportingResponse;
import com.dms.app.response.DynamicReportingResponse;
import com.dms.app.response.FTERAllocationReportingResponse;
import com.dms.app.response.ProgramOrProjectReportingResponse;

/**
 * @author Richa Prasad
 *
 */
@Component
public class DependencyReportingOrMetricServiceDaoImpl implements DependencyReportingOrMetricServiceDao {
	
	@Autowired private BaseDao baseDao;
	
	@SuppressWarnings("unchecked")
	@Override
	public DynamicReportingResponse getDynamicReportingSummary(String releaseId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("dep_dynamic_rpt")
				.returningResultSet("resultset", new DynamicReportingResponseRowMapper())
				.declareParameters(new SqlParameter("in_releaseId", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("in_releaseId", releaseId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<DynamicReportingResponse> dynamicReportingResponseList = (List<DynamicReportingResponse>) m.get("resultset");
		DynamicReportingResponse dynamicReportingResponse = dynamicReportingResponseList.get(0);
		return dynamicReportingResponse;
	}
	@SuppressWarnings("unchecked")
	@Override
	public BudgetReportingResponse getBudgetReportingSummary(String releaseId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("dep_budget_rpt")
				.returningResultSet("resultset", new BudgetReportingResponseRowMapper())
				.declareParameters(new SqlParameter("in_releaseId", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("in_releaseId", releaseId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<BudgetReportingResponse> budgetReportingResponseList = (List<BudgetReportingResponse>) m.get("resultset");
		BudgetReportingResponse budgetReportingResponse = budgetReportingResponseList.get(0);
		return budgetReportingResponse;
	}
	@SuppressWarnings("unchecked")
	@Override
	public FTERAllocationReportingResponse getFTEAllocationReportingSummary(
			String releaseId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("dep_fte_allocation_rpt")
				.returningResultSet("resultset", new FTERAllocationReportingResponseRowMapper())
				.declareParameters(new SqlParameter("in_releaseId", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("in_releaseId", releaseId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<FTERAllocationReportingResponse> fTERAllocationReportingResponseList = (List<FTERAllocationReportingResponse>) m.get("resultset");
		FTERAllocationReportingResponse fTERAllocationReportingResponse = fTERAllocationReportingResponseList.get(0);
		return fTERAllocationReportingResponse;
	}
	@SuppressWarnings("unchecked")
	@Override
	public ConflictsReportingResponse getDependencyConflictsReportingSummary(
			String releaseId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("dep_conflicts_rpt")
				.returningResultSet("resultset", new ConflictsReportingResponseRowMapper())
				.declareParameters(new SqlParameter("in_releaseId", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("in_releaseId", releaseId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<ConflictsReportingResponse> conflictsReportingResponseList = (List<ConflictsReportingResponse>) m.get("resultset");
		ConflictsReportingResponse conflictsReportingResponse = conflictsReportingResponseList.get(0);
		return conflictsReportingResponse;
	}
	@SuppressWarnings("unchecked")
	@Override
	public ProgramOrProjectReportingResponse getProgramOrProjectReportingSummary(
			String releaseId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("dep_prog_project_rpt")
				.returningResultSet("resultset", new ProgramOrProjectReportingResponseRowMapper())
				.declareParameters(new SqlParameter("in_releaseId", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("in_releaseId", releaseId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<ProgramOrProjectReportingResponse> programOrProjectReportingResponseList = (List<ProgramOrProjectReportingResponse>) m.get("resultset");
		ProgramOrProjectReportingResponse programOrProjectReportingResponse = programOrProjectReportingResponseList.get(0);
		return programOrProjectReportingResponse;
	}
	@SuppressWarnings("unchecked")
	@Override
	public CapabilitiesOrRequirementsReportingResponse getCapabilityOrRequirementsReportingSummary(
			String releaseId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("dep_capability_req_rpt")
				.returningResultSet("resultset", new CapabilitiesOrRequirementsReportingResponseRowMapper())
				.declareParameters(new SqlParameter("in_releaseId", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("in_releaseId", releaseId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<CapabilitiesOrRequirementsReportingResponse> capabilitiesOrRequirementsReportingResponselist = (List<CapabilitiesOrRequirementsReportingResponse>) m.get("resultset");
		CapabilitiesOrRequirementsReportingResponse capabilitiesOrRequirementsReportingResponse = capabilitiesOrRequirementsReportingResponselist.get(0);
		return capabilitiesOrRequirementsReportingResponse;
	}


}

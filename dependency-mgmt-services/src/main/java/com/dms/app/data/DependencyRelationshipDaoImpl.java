/**
 * 
 */
package com.dms.app.data;

import java.sql.Types;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

import com.dms.app.data.mappers.ApplicationRelBuilderRowMapper;
import com.dms.app.data.mappers.CapabilityRelBuilderRowMapper;
import com.dms.app.data.mappers.ProcessRelationshipBuilderRowMapper;
import com.dms.app.data.mappers.ProjectRelationshipBuilderRowMapper;
import com.dms.app.data.mappers.ReleaseRelBuilderRowMapper;
import com.dms.app.data.mappers.ServiceRelationshipBuilderRowMapper;
import com.dms.app.response.relationship.AppRelationshipBuilderResponse;
import com.dms.app.response.relationship.CapabilityRelationshipBuilderResponse;
import com.dms.app.response.relationship.ProcessRelationshipBuilderResponse;
import com.dms.app.response.relationship.ProjectRelationshipBuilderResponse;
import com.dms.app.response.relationship.ReleaseRelationshipBuilderResponse;
import com.dms.app.response.relationship.ServiceRelationshipBuilderResponse;

/**
 * @author Richa Prasad
 *
 */
@Repository
public class DependencyRelationshipDaoImpl extends BaseDao implements DependencyRelationshipDao {

	@SuppressWarnings("unchecked")
	@Override
	public CapabilityRelationshipBuilderResponse getCapabilityRelSummary(String releaseNum) {
		SimpleJdbcCall procCapabilityRelSummary = new SimpleJdbcCall(getJdbcTemplate());
				procCapabilityRelSummary.withProcedureName("capability_rel_builder")
				.returningResultSet("capabilities", new CapabilityRelBuilderRowMapper())
				.declareParameters(new SqlParameter("In_ReleaseNum", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseNum);

		Map<String, Object> m = procCapabilityRelSummary.execute(input);

		List<CapabilityRelationshipBuilderResponse> capabilityRelList = (List<CapabilityRelationshipBuilderResponse>) m.get("capabilities");
		CapabilityRelationshipBuilderResponse capabilityRelResponse = capabilityRelList.get(0);
		return capabilityRelResponse;
	}

	@SuppressWarnings("unchecked")
	@Override
	public AppRelationshipBuilderResponse getAppRelationshipSummary(String releaseNum) {
		SimpleJdbcCall procAppRelSummary = new SimpleJdbcCall(getJdbcTemplate());
		procAppRelSummary.withProcedureName("application_rel_builder")
				.returningResultSet("apps", new ApplicationRelBuilderRowMapper())
				.declareParameters(new SqlParameter("In_ReleaseNum", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseNum);

		Map<String, Object> m = procAppRelSummary.execute(input);

		List<AppRelationshipBuilderResponse> appRelList = (List<AppRelationshipBuilderResponse>) m.get("apps");
		AppRelationshipBuilderResponse appRelResponse = appRelList.get(0);
		return appRelResponse;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ReleaseRelationshipBuilderResponse getReleaseRelationshipSummary(String releaseNum) {
		SimpleJdbcCall procReleaseRelSummary = new SimpleJdbcCall(getJdbcTemplate());
		procReleaseRelSummary.withProcedureName("release_rel_builder")
				.returningResultSet("releases", new ReleaseRelBuilderRowMapper())
				.declareParameters(new SqlParameter("In_ReleaseNum", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseNum);

		Map<String, Object> m = procReleaseRelSummary.execute(input);

		List<ReleaseRelationshipBuilderResponse> releaseRelList = (List<ReleaseRelationshipBuilderResponse>) m.get("releases");
		ReleaseRelationshipBuilderResponse releaseRelResponse = releaseRelList.get(0);
		return releaseRelResponse;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ProcessRelationshipBuilderResponse getProcessRelationshipSummary(String releaseNum) {
		SimpleJdbcCall procProcessRelSummary = new SimpleJdbcCall(getJdbcTemplate());
		procProcessRelSummary.withProcedureName("process_rel_builder")
				.returningResultSet("processes", new ProcessRelationshipBuilderRowMapper())
				.declareParameters(new SqlParameter("In_ReleaseNum", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseNum);

		Map<String, Object> m = procProcessRelSummary.execute(input);

		List<ProcessRelationshipBuilderResponse> processRelList = (List<ProcessRelationshipBuilderResponse>) m.get("processes");
		ProcessRelationshipBuilderResponse processRelResponse = processRelList.get(0);
		return processRelResponse;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ProjectRelationshipBuilderResponse getProjectRelationshipSummary(String releaseNum) {
		SimpleJdbcCall procProjectRelSummary = new SimpleJdbcCall(getJdbcTemplate());
		procProjectRelSummary.withProcedureName("project_rel_builder")
				.returningResultSet("projects", new ProjectRelationshipBuilderRowMapper())
				.declareParameters(new SqlParameter("In_ReleaseNum", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseNum);

		Map<String, Object> m = procProjectRelSummary.execute(input);

		List<ProjectRelationshipBuilderResponse> projectRelList = (List<ProjectRelationshipBuilderResponse>) m.get("projects");
		ProjectRelationshipBuilderResponse projectRelResponse = projectRelList.get(0);
		return projectRelResponse;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ServiceRelationshipBuilderResponse getServiceRelationshipSummary(String releaseNum) {
		SimpleJdbcCall procServiceRelSummary = new SimpleJdbcCall(getJdbcTemplate());
		procServiceRelSummary.withProcedureName("service_rel_builder")
				.returningResultSet("services", new ServiceRelationshipBuilderRowMapper())
				.declareParameters(new SqlParameter("In_ReleaseNum", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseNum);

		Map<String, Object> m = procServiceRelSummary.execute(input);

		List<ServiceRelationshipBuilderResponse> serviceRelList = (List<ServiceRelationshipBuilderResponse>) m.get("services");
		ServiceRelationshipBuilderResponse serviceRelResponse = serviceRelList.get(0);
		
		return serviceRelResponse;
	}

}

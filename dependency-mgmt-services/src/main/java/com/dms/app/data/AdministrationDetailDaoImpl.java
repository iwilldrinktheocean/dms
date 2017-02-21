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

import com.dms.app.data.mappers.administration.ApplicationAdministrationRowMapper;
import com.dms.app.data.mappers.administration.CapabilitiesAdministrationRowMapper;
import com.dms.app.data.mappers.administration.ProcessAdministrationRowMapper;
import com.dms.app.data.mappers.administration.RequirementsAdministrationRowMapper;
import com.dms.app.data.mappers.administration.ResourceManagementRowMapper;
import com.dms.app.response.administration.ApplicationAdministrationResponse;
import com.dms.app.response.administration.CapabilitiesAdministrationResponse;
import com.dms.app.response.administration.ProcessAdministrationResponse;
import com.dms.app.response.administration.RequirementsAdministrationResponse;
import com.dms.app.response.administration.ResourceManagementResponse;

/**
 * @author Richa Prasad
 *
 */
@Repository
public class AdministrationDetailDaoImpl extends BaseDao implements AdministrationDetailDao {

	@SuppressWarnings("unchecked")
	@Override
	public CapabilitiesAdministrationResponse getCapabilitiesAdministration(String releaseNum) {
		SimpleJdbcCall procCapabilitiesAdmin = new SimpleJdbcCall(getJdbcTemplate());
		procCapabilitiesAdmin.withProcedureName("capabilities_administration")
				.returningResultSet("capabilities", new CapabilitiesAdministrationRowMapper())
				.declareParameters(new SqlParameter("In_ReleaseNum", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseNum);

		Map<String, Object> m = procCapabilitiesAdmin.execute(input);

		List<CapabilitiesAdministrationResponse> capabilitiesAdminList = (List<CapabilitiesAdministrationResponse>) m.get("capabilities");
		CapabilitiesAdministrationResponse capabilitiesAdminResponse = capabilitiesAdminList.get(0);
		return capabilitiesAdminResponse;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ApplicationAdministrationResponse getApplicationAdministration(String releaseNum) {
		SimpleJdbcCall procApplicationAdmin = new SimpleJdbcCall(getJdbcTemplate());
		procApplicationAdmin.withProcedureName("application_administration")	
				.returningResultSet("apps", new ApplicationAdministrationRowMapper())						
				.declareParameters(new SqlParameter("In_ReleaseNum", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseNum);

		Map<String, Object> m = procApplicationAdmin.execute(input);

		List<ApplicationAdministrationResponse> applicationAdminList = (List<ApplicationAdministrationResponse>) m.get("apps");
		ApplicationAdministrationResponse applicationAdminResponse = applicationAdminList.get(0);
		return applicationAdminResponse;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ProcessAdministrationResponse getProcessAdministration(String releaseNum) {
		SimpleJdbcCall procProcessAdmin = new SimpleJdbcCall(getJdbcTemplate());
				procProcessAdmin.withProcedureName("process_administration")	
				.returningResultSet("processes", new ProcessAdministrationRowMapper())					
				.declareParameters(new SqlParameter("In_ReleaseNum", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseNum);

		Map<String, Object> m = procProcessAdmin.execute(input);

		List<ProcessAdministrationResponse> processAdminList = (List<ProcessAdministrationResponse>) m.get("processes");
		ProcessAdministrationResponse processAdminResponse = processAdminList.get(0);
		return processAdminResponse;
	}

	@SuppressWarnings("unchecked")
	@Override
	public RequirementsAdministrationResponse getRequirementsAdministration(String releaseNum) {
		SimpleJdbcCall reqProcessAdmin = new SimpleJdbcCall(getJdbcTemplate());
		reqProcessAdmin.withProcedureName("requirements_administration")	
				.returningResultSet("requirements", new RequirementsAdministrationRowMapper())					
				.declareParameters(new SqlParameter("In_ReleaseNum", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseNum);

		Map<String, Object> m = reqProcessAdmin.execute(input);

		List<RequirementsAdministrationResponse> reqAdminList = (List<RequirementsAdministrationResponse>) m.get("requirements");
		RequirementsAdministrationResponse reqAdminResponse = reqAdminList.get(0);
		return reqAdminResponse;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ResourceManagementResponse getResourceManagement(String releaseNum) {
		SimpleJdbcCall resProcessAdmin = new SimpleJdbcCall(getJdbcTemplate());
		resProcessAdmin.withProcedureName("resource_mgmt_administration")	
				.returningResultSet("resources", new ResourceManagementRowMapper())			
				.declareParameters(new SqlParameter("In_ReleaseNum", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseNum);

		Map<String, Object> m = resProcessAdmin.execute(input);

		List<ResourceManagementResponse> resAdminList = (List<ResourceManagementResponse>) m.get("resources");
		ResourceManagementResponse resAdminResponse = resAdminList.get(0);
		return resAdminResponse;
	}

}

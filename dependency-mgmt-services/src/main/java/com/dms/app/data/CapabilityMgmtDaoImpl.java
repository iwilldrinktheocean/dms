/**
 * 
 */
package com.dms.app.data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Component;

import com.dms.app.data.mappers.CapabilityReportRowMapper;
import com.dms.app.data.mappers.CapabilityReportingHeaderRowMapper;
import com.dms.app.model.CapabilitiesModel;
import com.dms.app.model.CapabilityReportingModel;
import com.dms.app.response.CapabilitiesResponse;
import com.dms.app.response.CapabilityReportingResponse;

/**
 * @author Syam
 *
 */
@Component
public class CapabilityMgmtDaoImpl implements CapabilityMgmtDao {
	@Autowired
	private BaseDao baseDao;
	
	
	@Override
	public CapabilityReportingResponse getCapabilityReporting(
			String capabilityId) {
		
		CapabilityReportingResponse capabilityReportingResponse=getCapabilityReportingHeader(capabilityId);
		
		
		List<CapabilityReportingModel> capabilityReporting=getCapabilitiesReport(capabilityId);
		capabilityReportingResponse.setCapabilityReporting(capabilityReporting);
		
		return capabilityReportingResponse;
	}
	
	
	@SuppressWarnings("unchecked")
	private List<CapabilityReportingModel> getCapabilitiesReport(
			String capabilityId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("SP_DMS_CAPABILITY_REPORTING")
				.returningResultSet("resultset", new CapabilityReportRowMapper())
				.declareParameters(new SqlParameter("CAP_ID", Types.VARCHAR));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("CAP_ID", capabilityId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<CapabilityReportingModel> capabilityReportingModelList = (List<CapabilityReportingModel>) m.get("resultset");
		return capabilityReportingModelList;
	}


	@SuppressWarnings("unchecked")
	private   CapabilityReportingResponse  getCapabilityReportingHeader(String capabilityId){
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("SP_DMS_CAPABILITY_TYPE")
				.returningResultSet("resultset", new CapabilityReportingHeaderRowMapper())
				.declareParameters(new SqlParameter("CAP_ID", Types.VARCHAR));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("CAP_ID", capabilityId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<CapabilityReportingResponse> capabilityReportingResponseList = (List<CapabilityReportingResponse>) m.get("resultset");
		CapabilityReportingResponse capabilityReportingResponse = capabilityReportingResponseList.get(0);
		return capabilityReportingResponse;
	}

	@Override
	public CapabilitiesResponse getCapabilities() {
		CapabilitiesResponse response=new CapabilitiesResponse();
		List<CapabilitiesModel> capabilities = baseDao.getJdbcTemplate().query(
				"select BusCapID, busCapabilityName from vw_dms_capabilitylist",
				new RowMapper<CapabilitiesModel>() {
					public CapabilitiesModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						
						CapabilitiesModel capabilitiesModel=new CapabilitiesModel();
						capabilitiesModel.setCapabilityId(rs.getString("BusCapID"));
						capabilitiesModel.setCapabilityDesc(rs.getString("busCapabilityName"));
						return capabilitiesModel;
					}
				});
		response.setCapabilities(capabilities);
		return response;
	}


}

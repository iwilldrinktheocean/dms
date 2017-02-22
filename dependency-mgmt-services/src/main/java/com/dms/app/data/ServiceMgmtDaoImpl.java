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

import com.dms.app.response.ReleaseMgmtSummaryResponse;
import com.dms.app.data.mappers.ServiceMaintenanceTableRowMapper;
import com.dms.app.model.ServiceMaintenanceTableModel;
import com.dms.app.response.BusinessOwnerSummaryResponse;
import com.dms.app.response.CapabilityTypMgmtSummaryResponse;
import com.dms.app.response.OwnerTableMgmtSummaryResponse;
import com.dms.app.response.ServiceMaintenanceTableResponse;
import com.dms.app.response.ServiceTableMgmtSummaryResponse;

/**
 * @author PWC
 *
 */
@Component
public class ServiceMgmtDaoImpl implements ServiceMgmtDao {
	@Autowired private BaseDao baseDao;

	@Override
	public ServiceMaintenanceTableResponse getServiceMaintenanceTableReport(
			String releaseId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("SP_DMS_SERVICE_MAINTENANCE")
				.returningResultSet("resultset", new ServiceMaintenanceTableRowMapper())
				.declareParameters(new SqlParameter("In_ReleaseNum", Types.INTEGER));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("In_ReleaseNum", releaseId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<ServiceMaintenanceTableModel> serviceMaintenanceTableModelList = (List<ServiceMaintenanceTableModel>) m.get("resultset");
		ServiceMaintenanceTableResponse response=new ServiceMaintenanceTableResponse();
		response.setServiceTableList(serviceMaintenanceTableModelList);
		return response;
		
		
	}

	@Override
	public ServiceTableMgmtSummaryResponse getServiceTableMgmtSummary(
			String releaseId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("SP_SERVICE_TABLE")
				.returningResultSet("resultset", new ServiceMaintenanceTableRowMapper())
				.declareParameters(new SqlParameter("in_releaseId", Types.INTEGER));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("in_releaseId", releaseId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<ServiceTableMgmtSummaryResponse> serviceTableMgmtSummaryResponseList = (List<ServiceTableMgmtSummaryResponse>) m.get("resultset");
		ServiceTableMgmtSummaryResponse response=new ServiceTableMgmtSummaryResponse();
		response=serviceTableMgmtSummaryResponseList.get(0);
		return response;
	}

	@Override
	public ReleaseMgmtSummaryResponse getReleaseManagementSummary(
			String releaseId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("SP_RELEASE_MGMT_SUMMARY")
				.returningResultSet("resultset", new ServiceMaintenanceTableRowMapper())
				.declareParameters(new SqlParameter("in_releaseId", Types.INTEGER));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("in_releaseId", releaseId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<ReleaseMgmtSummaryResponse> releaseMgmtSummaryResponseList = (List<ReleaseMgmtSummaryResponse>) m.get("resultset");
		ReleaseMgmtSummaryResponse response=new ReleaseMgmtSummaryResponse();
		response=releaseMgmtSummaryResponseList.get(0);
		return response;
	}

	@Override
	public CapabilityTypMgmtSummaryResponse getCapabilityTypeManagementSummary(
			String releaseId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("SP_CAP_MGMT_SUMMARY")
				.returningResultSet("resultset", new ServiceMaintenanceTableRowMapper())
				.declareParameters(new SqlParameter("in_releaseId", Types.INTEGER));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("in_releaseId", releaseId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<CapabilityTypMgmtSummaryResponse> capabilityTypMgmtSummaryResponseList = (List<CapabilityTypMgmtSummaryResponse>) m.get("resultset");
		CapabilityTypMgmtSummaryResponse response=new CapabilityTypMgmtSummaryResponse();
		response=capabilityTypMgmtSummaryResponseList.get(0);
		return response;
	}

	@Override
	public OwnerTableMgmtSummaryResponse getOwnerTableManagementSummary(
			String releaseId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("SP_OWNER_MGMT_SUMMARY")
				.returningResultSet("resultset", new ServiceMaintenanceTableRowMapper())
				.declareParameters(new SqlParameter("in_releaseId", Types.INTEGER));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("in_releaseId", releaseId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<OwnerTableMgmtSummaryResponse> ownerTableMgmtSummaryResponseList = (List<OwnerTableMgmtSummaryResponse>) m.get("resultset");
		OwnerTableMgmtSummaryResponse response=new OwnerTableMgmtSummaryResponse();
		response=ownerTableMgmtSummaryResponseList.get(0);
		return response;
	}

	@Override
	public BusinessOwnerSummaryResponse getBusinessOwnerManagementSummary(
			String releaseId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("SP_BUSINESS_OWNER_MGMT")
				.returningResultSet("resultset", new ServiceMaintenanceTableRowMapper())
				.declareParameters(new SqlParameter("in_releaseId", Types.INTEGER));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("in_releaseId", releaseId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<BusinessOwnerSummaryResponse> businessOwnerSummaryResponseList = (List<BusinessOwnerSummaryResponse>) m.get("resultset");
		BusinessOwnerSummaryResponse response=new BusinessOwnerSummaryResponse();
		response=businessOwnerSummaryResponseList.get(0);
		return response;
	}


}

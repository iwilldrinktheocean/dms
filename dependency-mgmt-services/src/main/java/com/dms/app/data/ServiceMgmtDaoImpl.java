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

import com.dms.app.data.mappers.ServiceMaintenanceTableRowMapper;
import com.dms.app.model.ServiceMaintenanceTableModel;
import com.dms.app.response.ServiceMaintenanceTableResponse;

/**
 * @author Richa Prasad
 *
 */
@Component
public class ServiceMgmtDaoImpl implements ServiceMgmtDao {
	@Autowired private BaseDao baseDao;

	@SuppressWarnings("unchecked")
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


}

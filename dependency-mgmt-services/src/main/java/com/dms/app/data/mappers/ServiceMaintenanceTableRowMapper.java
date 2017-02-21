/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.model.ServiceMaintenanceTableModel;

/**
 * @author Richa Prasad
 *
 */
public class ServiceMaintenanceTableRowMapper implements RowMapper<ServiceMaintenanceTableModel> {

	@Override
	public ServiceMaintenanceTableModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		ServiceMaintenanceTableModel serviceMaintenanceTableModel=new ServiceMaintenanceTableModel();
		serviceMaintenanceTableModel.setServiceId(rs.getString("SERVICE_ID"));
		serviceMaintenanceTableModel.setServiceName(rs.getString("SERVICE_NAME"));
		serviceMaintenanceTableModel.setServiceDesc(rs.getString("SERVICE_DESC"));
		serviceMaintenanceTableModel.setBusinessUnit(rs.getString("BUSINESS_UNIT"));
		
		
		return serviceMaintenanceTableModel;
	}

}

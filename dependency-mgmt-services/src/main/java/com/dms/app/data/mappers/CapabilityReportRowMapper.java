package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.model.CapabilityReportingModel;

public class CapabilityReportRowMapper implements RowMapper<CapabilityReportingModel> {

	@Override
	public CapabilityReportingModel mapRow(ResultSet rs, int rowNum)
			throws SQLException {
		CapabilityReportingModel capabilityReportingModel=new CapabilityReportingModel();
		capabilityReportingModel.setCapabilityName(rs.getString("Cap_name"));
		capabilityReportingModel.setCapabilityType(rs.getString("Cap_type"));
		capabilityReportingModel.setReleaseDesc(rs.getString("Release_desc"));
		capabilityReportingModel.setProjectDesc(rs.getString("Service_desc"));
		capabilityReportingModel.setApplicationDesc(rs.getString("App_name"));
		capabilityReportingModel.setServiceDesc(rs.getString("ServiceName"));
		capabilityReportingModel.setCapabilityOwner(rs.getString("Cap_owner"));
		
		return capabilityReportingModel;
	}

}


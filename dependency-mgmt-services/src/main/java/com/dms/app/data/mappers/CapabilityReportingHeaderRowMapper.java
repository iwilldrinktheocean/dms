package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.CapabilityReportingResponse;

public class CapabilityReportingHeaderRowMapper implements RowMapper<CapabilityReportingResponse> {

	@Override
	public CapabilityReportingResponse mapRow(ResultSet rs, int rowNum)
			throws SQLException {
		CapabilityReportingResponse response=new CapabilityReportingResponse();
		response.setCrFlag(rs.getBoolean("CR_FLAG"));
		response.setKdFlag(rs.getBoolean("KD_FLAG"));
		response.setGapFlag(rs.getBoolean("GAP_FLAG"));
		response.setRqFlag(rs.getBoolean("RQ_FLAG"));
		return response;
	}

}

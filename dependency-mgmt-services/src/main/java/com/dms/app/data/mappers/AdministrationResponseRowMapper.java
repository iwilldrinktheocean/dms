package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
//import org.springframework.jdbc.core.RowMapperResultSetExtractor;

import com.dms.app.response.AdministrationResponse;

public class AdministrationResponseRowMapper implements RowMapper<AdministrationResponse> {

	@Override
	public AdministrationResponse mapRow(ResultSet rs, int rowNum) throws SQLException {
		AdministrationResponse administrationResponse = new AdministrationResponse();
		administrationResponse.setNoOfCapabilities(rs.getLong("CAPABILITIES"));
		administrationResponse.setCostSavings(rs.getBigDecimal("COST_SAVINGS"));
		administrationResponse.setNoOfApplications(rs.getLong("APPLICATIONS"));
		administrationResponse.setDevelopmentCosts(rs.getBigDecimal("DEV_COST"));
		return administrationResponse;
	}

}

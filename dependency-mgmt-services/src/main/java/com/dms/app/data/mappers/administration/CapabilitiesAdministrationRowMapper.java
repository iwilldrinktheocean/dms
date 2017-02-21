/**
 * 
 */
package com.dms.app.data.mappers.administration;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.administration.CapabilitiesAdministrationResponse;

/**
 * @author Richa Prasad
 *
 */
public class CapabilitiesAdministrationRowMapper implements RowMapper<CapabilitiesAdministrationResponse> {

	@Override
	public CapabilitiesAdministrationResponse mapRow(ResultSet rs, int rowNum) throws SQLException {
		CapabilitiesAdministrationResponse capabilitiesAdministration = new CapabilitiesAdministrationResponse();
		capabilitiesAdministration.setNoOfCapabilities(rs.getLong("CAPABILITIES")); 
		capabilitiesAdministration.setCostSavings(rs.getBigDecimal("COST_SAVINGS"));
		capabilitiesAdministration.setNoOfApplications(rs.getLong("APPLICATIONS"));
		capabilitiesAdministration.setDevelopmentCosts(rs.getBigDecimal("DEV_COST"));
		return capabilitiesAdministration;
	}

}

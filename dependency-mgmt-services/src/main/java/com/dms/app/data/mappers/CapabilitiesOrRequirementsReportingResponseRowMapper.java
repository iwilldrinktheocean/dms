/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.CapabilitiesOrRequirementsReportingResponse;

/**
 * @author stammiredd001
 *
 */
public class CapabilitiesOrRequirementsReportingResponseRowMapper implements
		RowMapper<CapabilitiesOrRequirementsReportingResponse> {

	@Override
	public CapabilitiesOrRequirementsReportingResponse mapRow(ResultSet rs,
			int rowNum) throws SQLException {
		CapabilitiesOrRequirementsReportingResponse capabilitiesOrRequirementsReportingResponse = new CapabilitiesOrRequirementsReportingResponse();
		capabilitiesOrRequirementsReportingResponse.setNoOfCapabilities(rs.getLong("NO_CAPABILITIES"));
		capabilitiesOrRequirementsReportingResponse.setCapabilitiesCost(rs.getBigDecimal("CAPABILITIES_COST"));
		capabilitiesOrRequirementsReportingResponse.setCapInUse(rs.getLong("CAP_IN_USE"));
		capabilitiesOrRequirementsReportingResponse.setCapNotUsed(rs.getLong("CAP_NOT_USED"));
		return capabilitiesOrRequirementsReportingResponse;
	}

}

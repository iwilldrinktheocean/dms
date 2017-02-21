/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.ConflictsReportingResponse;

/**
 * @author Richa Prasad
 *
 */
public class ConflictsReportingResponseRowMapper implements RowMapper<ConflictsReportingResponse> {

	@Override
	public ConflictsReportingResponse mapRow(ResultSet rs, int rowNum)
			throws SQLException {
		ConflictsReportingResponse conflictsReportingResponse=new ConflictsReportingResponse();
		conflictsReportingResponse.setNoOfCapabilities(rs.getLong("NO_CAPABILITIES"));
		conflictsReportingResponse.setNoOfApplications(rs.getLong("NO_APPLICATIONS"));
		conflictsReportingResponse.setNoOfReleases(rs.getLong("NO_RELEASES"));
		conflictsReportingResponse.setNoOfServices(rs.getLong("NO_SERVICES"));
		return conflictsReportingResponse;
	}



}

/**
 * 
 */
package com.dms.app.data.mappers.administration;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.administration.ProcessAdministrationResponse;

/**
 * @author Richa Prasad
 *
 */
public class ProcessAdministrationRowMapper implements RowMapper<ProcessAdministrationResponse> {

	@Override
	public ProcessAdministrationResponse mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProcessAdministrationResponse processAdministration = new ProcessAdministrationResponse();
		processAdministration.setNoOfProcesses(rs.getLong("PROCESSES"));
		processAdministration.setNoOfReleases(rs.getLong("RELEASES"));
		processAdministration.setNoOfApplications(rs.getLong("APPLICATIONS"));
		processAdministration.setNoOfServices(rs.getLong("SERVICES"));
		return processAdministration;
	}

}

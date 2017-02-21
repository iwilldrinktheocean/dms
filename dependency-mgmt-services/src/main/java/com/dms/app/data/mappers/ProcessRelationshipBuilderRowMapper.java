/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.relationship.ProcessRelationshipBuilderResponse;

/**
 * @author Richa Prasad
 *
 */
public class ProcessRelationshipBuilderRowMapper implements RowMapper<ProcessRelationshipBuilderResponse> {

	@Override
	public ProcessRelationshipBuilderResponse mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProcessRelationshipBuilderResponse processRelationshipBuilder = new ProcessRelationshipBuilderResponse();
		processRelationshipBuilder.setNoOfProcesses(rs.getLong("PROCESSES"));
		processRelationshipBuilder.setNoOfReleases(rs.getLong("RELEASES"));
		processRelationshipBuilder.setNoOfApplications(rs.getLong("APPLICATIONS"));
		processRelationshipBuilder.setNoOfServices(rs.getLong("SERVICES"));
		return processRelationshipBuilder;
	}

}

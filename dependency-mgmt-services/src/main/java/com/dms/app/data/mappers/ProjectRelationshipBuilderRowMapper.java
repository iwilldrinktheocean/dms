/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.relationship.ProjectRelationshipBuilderResponse;

/**
 * @author Richa Prasad
 *
 */
public class ProjectRelationshipBuilderRowMapper implements RowMapper<ProjectRelationshipBuilderResponse> {

	@Override
	public ProjectRelationshipBuilderResponse mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProjectRelationshipBuilderResponse projectRelationshipBuilder = new ProjectRelationshipBuilderResponse();
		projectRelationshipBuilder.setNoOfApplications(rs.getLong("APPLICATIONS"));
		projectRelationshipBuilder.setTotalAppCost(rs.getBigDecimal("TOTAL_APP_COST"));
		projectRelationshipBuilder.setTotalAppSavings(rs.getBigDecimal("TOTAL_APP_SAVINGS"));
		projectRelationshipBuilder.setTotalFTE(rs.getLong("TOTAL_FTE"));
		return projectRelationshipBuilder;
	}

}

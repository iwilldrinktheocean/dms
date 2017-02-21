/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.DependencyMetricResponse;

/**
 * @author Richa Prasad
 *
 */
public class DependencyMetricResponseRowMapper implements  RowMapper<DependencyMetricResponse> {

	@Override
	public DependencyMetricResponse mapRow(ResultSet rs, int rowNum)
			throws SQLException {
		DependencyMetricResponse dependencyMetricResponse= new DependencyMetricResponse();
		dependencyMetricResponse.setNoOfReleases(rs.getLong("NO_RELEASE"));
		dependencyMetricResponse.setNoOfBacklogs(rs.getLong("NO_BACKLOG"));
		dependencyMetricResponse.setNoOfProjects(rs.getLong("NO_PROJECT"));
		dependencyMetricResponse.setNoOfConflits(rs.getLong("NO_CONFLICT"));
		dependencyMetricResponse.setNoOfCapabilities(rs.getLong("NO_CAPABILITY"));
		dependencyMetricResponse.setNoOfServices(rs.getLong("NO_SERVICE"));
		dependencyMetricResponse.setNoOfApplications(rs.getLong("NO_APPLICATION"));
		return dependencyMetricResponse;
	}

	
}

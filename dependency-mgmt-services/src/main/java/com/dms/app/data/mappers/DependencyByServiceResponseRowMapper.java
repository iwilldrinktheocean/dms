/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.DependencyByServiceResponse;

/**
 * @author Richa Prasad
 *
 */
public class DependencyByServiceResponseRowMapper implements RowMapper<DependencyByServiceResponse> {

	@Override
	public DependencyByServiceResponse mapRow(ResultSet rs, int rowNum)
			throws SQLException {
		DependencyByServiceResponse dependencyByServiceResponse=new DependencyByServiceResponse();
		dependencyByServiceResponse.setNoOfServices(rs.getLong("NO_SERVICE"));
		dependencyByServiceResponse.setNoOfReleases(rs.getDouble("NO_RELEASE"));
		dependencyByServiceResponse.setNoOfApplications(rs.getLong("NO_APPLICATION"));
		dependencyByServiceResponse.setServiceStatus(rs.getString("SERVICE_STATUS"));
		dependencyByServiceResponse.setDevelopmentCosts(rs.getBigDecimal("DEV_COST"));
		dependencyByServiceResponse.setCostSavings(rs.getBigDecimal("COST_SAVINGS"));
		return dependencyByServiceResponse;
	}


}

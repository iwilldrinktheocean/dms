/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.DependencyRelationshipMgmtResponse;

/**
 * @author Richa Prasad
 *
 */
public class DependencyRelationshipMgmtResponseRowMapper implements RowMapper<DependencyRelationshipMgmtResponse>{

	@Override
	public DependencyRelationshipMgmtResponse mapRow(ResultSet rs, int rowNum)
			throws SQLException {
		DependencyRelationshipMgmtResponse dependencyRelationshipMgmtResponse=new DependencyRelationshipMgmtResponse();
		dependencyRelationshipMgmtResponse.setNoOfCapabilities(rs.getLong("NO_CAPABILITIES"));
		dependencyRelationshipMgmtResponse.setCostSavings(rs.getBigDecimal("COST_SAVINGS"));
		dependencyRelationshipMgmtResponse.setNoOfApplications(rs.getLong("NO_APPLICATION")); 
		dependencyRelationshipMgmtResponse.setDevelopmentCosts(rs.getBigDecimal("DEV_COST"));
		
		return dependencyRelationshipMgmtResponse;
	}

}

/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.relationship.CapabilityRelationshipBuilderResponse;

/**
 * @author Richa Prasad
 *
 */
public class CapabilityRelBuilderRowMapper implements RowMapper<CapabilityRelationshipBuilderResponse> {

	@Override
	public CapabilityRelationshipBuilderResponse mapRow(ResultSet rs, int rowNum) throws SQLException {
		CapabilityRelationshipBuilderResponse builderResponse = new CapabilityRelationshipBuilderResponse();
		builderResponse.setNoOfCapabilities(rs.getLong("CAPABILITIES"));
		builderResponse.setCostSavings(rs.getBigDecimal("COST_SAVINGS"));
		builderResponse.setNoOfApplications(rs.getLong("APPLICATIONS"));
		builderResponse.setDevelopmentCosts(rs.getBigDecimal("DEV_COST"));
		return builderResponse;
	}

}

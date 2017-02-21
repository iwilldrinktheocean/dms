/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.relationship.ServiceRelationshipBuilderResponse;

/**
 * @author Richa Prasad
 *
 */
public class ServiceRelationshipBuilderRowMapper implements RowMapper<ServiceRelationshipBuilderResponse> {

	@Override
	public ServiceRelationshipBuilderResponse mapRow(ResultSet rs, int rowNum) throws SQLException {
		ServiceRelationshipBuilderResponse serviceRelationshipBuilder = new ServiceRelationshipBuilderResponse();
		serviceRelationshipBuilder.setAttribute(rs.getLong("ATTRIBUTE"));
		serviceRelationshipBuilder.setTotalAppCost(rs.getBigDecimal("TOTAL_APP_COST"));
		serviceRelationshipBuilder.setTotalAppSavings(rs.getBigDecimal("TOTAL_APP_SAVINGS"));
		serviceRelationshipBuilder.setTotalFTE(rs.getLong("TOTAL_FTE"));
		return serviceRelationshipBuilder;
	}

}

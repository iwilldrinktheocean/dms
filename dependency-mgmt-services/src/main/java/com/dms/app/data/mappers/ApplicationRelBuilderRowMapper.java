/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.relationship.AppRelationshipBuilderResponse;

/**
 * @author Richa Prasad
 *
 */
public class ApplicationRelBuilderRowMapper implements RowMapper<AppRelationshipBuilderResponse> {

	@Override
	public AppRelationshipBuilderResponse mapRow(ResultSet rs, int rowNum) throws SQLException {
		AppRelationshipBuilderResponse appRelationshipBuilder = new AppRelationshipBuilderResponse();
		appRelationshipBuilder.setNoOfApplications(rs.getLong("APPLICATIONS"));
		appRelationshipBuilder.setTotalAppCost(rs.getBigDecimal("TOTAL_APP_COST"));
		appRelationshipBuilder.setTotalAppSavings(rs.getBigDecimal("TOTAL_APP_SAVINGS"));
		appRelationshipBuilder.setTotalFTE(rs.getLong("TOTAL_FTE"));
		return appRelationshipBuilder;
	}

}

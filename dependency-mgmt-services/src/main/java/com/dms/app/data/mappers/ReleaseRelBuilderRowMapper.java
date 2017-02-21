/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.relationship.ReleaseRelationshipBuilderResponse;

/**
 * @author Richa Prasad
 *
 */
public class ReleaseRelBuilderRowMapper implements RowMapper<ReleaseRelationshipBuilderResponse> {

	@Override
	public ReleaseRelationshipBuilderResponse mapRow(ResultSet rs, int rowNum) throws SQLException {
		ReleaseRelationshipBuilderResponse releaseRelBuilder = new ReleaseRelationshipBuilderResponse();
		releaseRelBuilder.setAttribute(rs.getLong("ATTRIBUTE"));
		releaseRelBuilder.setTotalAppCost(rs.getBigDecimal("TOTAL_APP_COST"));
		releaseRelBuilder.setTotalAppSavings(rs.getBigDecimal("TOTAL_APP_SAVINGS"));
		releaseRelBuilder.setTotalFTE(rs.getLong("TOTAL_FTE"));
		return releaseRelBuilder;
	}

}

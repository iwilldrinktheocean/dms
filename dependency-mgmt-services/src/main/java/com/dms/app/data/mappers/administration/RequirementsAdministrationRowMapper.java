/**
 * 
 */
package com.dms.app.data.mappers.administration;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.administration.RequirementsAdministrationResponse;

/**
 * @author Richa Prasad
 *
 */
public class RequirementsAdministrationRowMapper implements RowMapper<RequirementsAdministrationResponse> {

	@Override
	public RequirementsAdministrationResponse mapRow(ResultSet rs, int rowNum) throws SQLException {
		RequirementsAdministrationResponse requirementsAdministration = new RequirementsAdministrationResponse();
		requirementsAdministration.setNoOfApplications(rs.getLong("APPLICATIONS"));		
		requirementsAdministration.setTotalAppCosts(rs.getBigDecimal("TOTAL_APP_COST"));
		requirementsAdministration.setTotalAppSavings(rs.getBigDecimal("TOTAL_APP_SAVINGS"));
		requirementsAdministration.setTotalFTE(rs.getLong("TOTAL_FTE"));
		return requirementsAdministration;
	}

}

/**
 * 
 */
package com.dms.app.data.mappers.administration;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.administration.ApplicationAdministrationResponse;

/**
 * @author Richa Prasad
 *
 */
public class ApplicationAdministrationRowMapper implements RowMapper<ApplicationAdministrationResponse> {

	@Override
	public ApplicationAdministrationResponse mapRow(ResultSet rs, int rowNum) throws SQLException {
		ApplicationAdministrationResponse applicationAdministration = new ApplicationAdministrationResponse();
		applicationAdministration.setNoOfApplications(rs.getLong("APPLICATIONS"));	
		applicationAdministration.setTotalAppCosts(rs.getBigDecimal("TOTAL_APP_COST"));
		applicationAdministration.setTotalAppSavings(rs.getBigDecimal("TOTAL_APP_SAVINGS"));
		applicationAdministration.setTotalFTE(rs.getLong("TOTAL_FTE"));
		return applicationAdministration;
	}

}

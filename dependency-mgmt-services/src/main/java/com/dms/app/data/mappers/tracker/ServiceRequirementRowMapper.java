/**
 * 
 */
package com.dms.app.data.mappers.tracker;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.model.ServiceRequirement;

/**
 * @author Richa Prasad
 *
 */
public class ServiceRequirementRowMapper implements RowMapper<ServiceRequirement> {

	@Override
	public ServiceRequirement mapRow(ResultSet rs, int rowNum) throws SQLException {
		ServiceRequirement serviceRequirement = new ServiceRequirement();
		serviceRequirement.setAtts(rs.getLong("ATTS"));
		serviceRequirement.setRfp(rs.getString("RFP"));
		serviceRequirement.setDescription(rs.getString("DESCRIPTION"));
		return serviceRequirement;
	}

}

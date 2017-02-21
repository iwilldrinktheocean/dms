/**
 * 
 */
package com.dms.app.data.mappers.administration;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.administration.ResourceManagementResponse;

/**
 * @author Richa Prasad
 *
 */
public class ResourceManagementRowMapper implements RowMapper<ResourceManagementResponse> {

	@Override
	public ResourceManagementResponse mapRow(ResultSet rs, int rowNum) throws SQLException {
		ResourceManagementResponse resourceManagement = new ResourceManagementResponse();
		resourceManagement.setNoOfResources(rs.getLong("RESOURCES"));		
		resourceManagement.setAllocatedFTE(rs.getLong("FTE_ALLOCATED"));
		resourceManagement.setAvailableFTEs(rs.getLong("AVAILABLE_FTE"));
		resourceManagement.setCostFTE(rs.getBigDecimal("FTE_COST"));
		return resourceManagement;
	}

}

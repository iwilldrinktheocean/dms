/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.ResourceAllocationResponse;

/**
 * @author Richa Prasad
 *
 */
public class ResourceAllocationResponseRowMapper implements RowMapper<ResourceAllocationResponse> {

	@Override
	public ResourceAllocationResponse mapRow(ResultSet rs, int rowNum)
			throws SQLException {
		ResourceAllocationResponse resourceAllocationResponse=new ResourceAllocationResponse();
		
		resourceAllocationResponse.setNoOfFTEs(rs.getLong("NO_FTE"));
		resourceAllocationResponse.setNoOfUtilizedFTEs(rs.getLong("NO_UTILIZED_FTE"));
		resourceAllocationResponse.setCostOfFTEs(rs.getBigDecimal("FTE_COST"));
		resourceAllocationResponse.setBudgetAvailable(rs.getBigDecimal("BUDGET_AVAILABLE"));
		return resourceAllocationResponse;
	}


}

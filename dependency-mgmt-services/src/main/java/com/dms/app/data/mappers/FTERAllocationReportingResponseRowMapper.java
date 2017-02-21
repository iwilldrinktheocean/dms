/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.FTERAllocationReportingResponse;

/**
 * @author stammiredd001
 *
 */
public class FTERAllocationReportingResponseRowMapper implements RowMapper<FTERAllocationReportingResponse> {

	@Override
	public FTERAllocationReportingResponse mapRow(ResultSet rs, int rowNum)
			throws SQLException {
		FTERAllocationReportingResponse fTERAllocationReportingResponse= new FTERAllocationReportingResponse();
		fTERAllocationReportingResponse.setTotalFTEs(rs.getLong("TOTAL_FTE"));
		fTERAllocationReportingResponse.setAllocatedFTEs(rs.getLong("ALLOCATED_FTE"));
		fTERAllocationReportingResponse.setTotalCost(rs.getBigDecimal("TOTAL_COST"));
		fTERAllocationReportingResponse.setCurrentCost(rs.getBigDecimal("CURRENT_COST"));
		
		return fTERAllocationReportingResponse;
	}



}

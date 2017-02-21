/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.ProgramOrProjectReportingResponse;

/**
 * @author stammiredd001
 *
 */
public class ProgramOrProjectReportingResponseRowMapper implements RowMapper<ProgramOrProjectReportingResponse> {

	@Override
	public ProgramOrProjectReportingResponse mapRow(ResultSet rs, int rowNum)
			throws SQLException {
		ProgramOrProjectReportingResponse programOrProjectReportingResponse= new ProgramOrProjectReportingResponse();
		
		programOrProjectReportingResponse.setNoOfPrograms(rs.getLong("NO_PROGRAMS"));
		programOrProjectReportingResponse.setNoOfProjects(rs.getLong("NO_PROJECTS"));
		programOrProjectReportingResponse.setProgramCosts(rs.getBigDecimal("PROGRAM_COSTS"));
		programOrProjectReportingResponse.setProjectCosts(rs.getBigDecimal("PROJECT_COSTS"));
		
		return programOrProjectReportingResponse;
	}



}

/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.DynamicReportingResponse;

/**
 * @author Richa Prasad
 *
 */
public class DynamicReportingResponseRowMapper implements RowMapper<DynamicReportingResponse>{


	@Override
	public DynamicReportingResponse mapRow(ResultSet rs, int rowNum)
			throws SQLException {
		
		DynamicReportingResponse dynamicReportingResponse=new DynamicReportingResponse();
		dynamicReportingResponse.setNoOfSavedQueries(rs.getLong("SAVED_QUERIES"));
		return dynamicReportingResponse;
	}

}

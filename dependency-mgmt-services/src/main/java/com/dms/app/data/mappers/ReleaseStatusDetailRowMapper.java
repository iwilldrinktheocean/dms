/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.model.ReleaseStatusDetail;

/**
 * @author Richa Prasad
 *
 */
public class ReleaseStatusDetailRowMapper implements RowMapper<ReleaseStatusDetail> {

	@Override
	public ReleaseStatusDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		ReleaseStatusDetail releaseStatusDetail = new ReleaseStatusDetail();
		releaseStatusDetail.setScope(rs.getLong("SCOPE"));		
		releaseStatusDetail.setAssessment(rs.getLong("ASSESSMENT"));
		releaseStatusDetail.setFunding(rs.getLong("FUNDING"));
		releaseStatusDetail.setDesign(rs.getLong("DESIGN"));
		releaseStatusDetail.setBusinessRequirement(rs.getLong("BUS_REQ"));
		releaseStatusDetail.setCode(rs.getLong("CODE"));
		releaseStatusDetail.setTest(rs.getLong("TEST"));
		return releaseStatusDetail;
	}

}

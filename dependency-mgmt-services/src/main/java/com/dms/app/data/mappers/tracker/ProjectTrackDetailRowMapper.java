/**
 * 
 */
package com.dms.app.data.mappers.tracker;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.model.ProjectTrackDetail;

/**
 * @author Richa Prasad
 *
 */
public class ProjectTrackDetailRowMapper implements RowMapper<ProjectTrackDetail> {

	@Override
	public ProjectTrackDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProjectTrackDetail projectTrackDetail = new ProjectTrackDetail();
		projectTrackDetail.setServiceOffer(rs.getString("SERVICE_OFFER"));		
		projectTrackDetail.setProjectID(rs.getString("PROJECT_ID"));
		projectTrackDetail.setPriority(rs.getString("PRIORITY"));
		projectTrackDetail.setRelease(rs.getString("RELEASE"));
		projectTrackDetail.setReleaseDate(rs.getDate("RELEASE_DATE"));
		projectTrackDetail.setGap(rs.getString("GAP"));
		projectTrackDetail.setStatus(rs.getString("STATUS"));
		projectTrackDetail.setPhaseOneAssessment(rs.getString("PHASE_ONE_ASSESSMENT"));
		projectTrackDetail.setGapServiceID(rs.getString("GAP_SERVICE_ID"));
		return projectTrackDetail;
	}

}

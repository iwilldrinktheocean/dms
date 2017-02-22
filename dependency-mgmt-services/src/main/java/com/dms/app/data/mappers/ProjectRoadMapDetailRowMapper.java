/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.model.ProjectRoadMapDetail;

/**
 * @author Richa Prasad
 *
 */
public class ProjectRoadMapDetailRowMapper implements RowMapper<ProjectRoadMapDetail> {

	@Override
	public ProjectRoadMapDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProjectRoadMapDetail projectRoadMapDetail = new ProjectRoadMapDetail();
		projectRoadMapDetail.setProjectDesc(rs.getString("DESCRIPTION"));	
		projectRoadMapDetail.setStatusComment(rs.getString("STATUS_COMMENT"));
		projectRoadMapDetail.setProjectStatus(rs.getLong("PROJECT_STATUS"));
		
		projectRoadMapDetail.setProjectId(rs.getString("PROJECT_ID"));	
		projectRoadMapDetail.setOtherComment(rs.getString("OTHER_COMMENT"));
		projectRoadMapDetail.setReleaseDate(rs.getDate("RELEASE_DATE"));
		return projectRoadMapDetail;
	}

}

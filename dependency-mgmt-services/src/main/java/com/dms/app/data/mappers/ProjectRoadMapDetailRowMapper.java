/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.model.ProjectRoadMapDetail;

/**
 * @author Richa Prasad
 *
 */
public class ProjectRoadMapDetailRowMapper implements RowMapper<ProjectRoadMapDetail> {

	@Override
	public ProjectRoadMapDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProjectRoadMapDetail projectRoadMapDetail = new ProjectRoadMapDetail();
		projectRoadMapDetail.setDescription(rs.getString("DESCRIPTION"));	
		projectRoadMapDetail.setStatusComment(rs.getString("STATUS_COMMENT"));
		projectRoadMapDetail.setProjectStatus(rs.getLong("PROJECT_STATUS"));
		return projectRoadMapDetail;
	}

}

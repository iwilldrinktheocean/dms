/**
 * 
 */
package com.dms.app.data.mappers.tracker;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.model.ProjectDetail;

/**
 * @author Richa Prasad
 *
 */
public class ProjectDetailRowMapper implements RowMapper<ProjectDetail> {

	@Override
	public ProjectDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProjectDetail projectDetail = new ProjectDetail();
		projectDetail.setProjectID(rs.getString("PROJECT_ID"));	
		projectDetail.setProjectCategory(rs.getString("PROJECT_CATEGORY"));
		projectDetail.setProjectDesc(rs.getString("PROJECT_DESC"));
		projectDetail.setProjectReleaseDate(rs.getDate("PROJECT_RELEASE_DATE"));
		projectDetail.setService(rs.getString("PROJECT_SERVICE"));
		return projectDetail;
	}

}

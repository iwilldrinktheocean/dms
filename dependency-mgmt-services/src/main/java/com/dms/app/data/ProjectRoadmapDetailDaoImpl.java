/**
 * 
 */
package com.dms.app.data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

import com.dms.app.data.mappers.ProjectRoadMapDetailRowMapper;
import com.dms.model.ApplicationData;
import com.dms.model.ProjectDetail;
import com.dms.model.ProjectRoadMapDetail;
import com.dms.model.ServiceDetail;

/**
 * @author Richa Prasad
 *
 */
@Repository
public class ProjectRoadmapDetailDaoImpl extends BaseDao implements ProjectRoadmapDetailDao {

	@SuppressWarnings("unchecked")
	@Override
	public ProjectRoadMapDetail getProjectDescription(String projectId, String releaseId) {
		SimpleJdbcCall procPrjDesc = new SimpleJdbcCall(getJdbcTemplate());
		
		procPrjDesc.withProcedureName("project_roadmap_detail_desc")	
		.returningResultSet("projectDetails", new ProjectRoadMapDetailRowMapper())
		.declareParameters(new SqlParameter("projectId", Types.VARCHAR), new SqlParameter("releaseId", Types.DECIMAL));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("projectId", projectId);
		input.put("releaseId", releaseId);

		Map<String, Object> data = procPrjDesc.execute(input);
		
		List<ProjectRoadMapDetail> projectDetails = (List<ProjectRoadMapDetail>) data.get("projectDetails");
		return projectDetails.get(0);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProjectDetail> getRelatedProjects(String projectId, String releaseId) {
		SimpleJdbcCall procRelatedProjects = new SimpleJdbcCall(getJdbcTemplate());
		
		procRelatedProjects.withProcedureName("project_roadmap_detail_related_projects")	
		.returningResultSet("projectDetails", new RowMapper<ProjectDetail>() {

			@Override
			public ProjectDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
				ProjectDetail projectDetail = new ProjectDetail();
				projectDetail.setProjectID(rs.getString("PROJECT_ID"));	
				projectDetail.setProjectDesc(rs.getString("PROJECT_DESC"));
				return projectDetail;
			}
		});
		
		procRelatedProjects.declareParameters(new SqlParameter("projectId", Types.VARCHAR), new SqlParameter("releaseId", Types.DECIMAL));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("projectId", projectId);
		input.put("releaseId", releaseId);

		Map<String, Object> data = procRelatedProjects.execute(input);
		
		List<ProjectDetail> projectDetails = (List<ProjectDetail>) data.get("projectDetails");
		return projectDetails;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ApplicationData> getImpactedApplications(String projectId, String releaseId) {
		SimpleJdbcCall procImpactedApps = new SimpleJdbcCall(getJdbcTemplate());
		
		procImpactedApps.withProcedureName("project_roadmap_detail_impacted_apps")	
		.returningResultSet("appData", new RowMapper<ApplicationData>() {

			@Override
			public ApplicationData mapRow(ResultSet rs, int rowNum) throws SQLException {
				ApplicationData applicationData = new ApplicationData();
				applicationData.setApplication(rs.getString("APPLICATION"));	
				applicationData.setDevelopmentType(rs.getString("DEVELOPMENT_TYPE"));
				return applicationData;
			}
		});
		
		procImpactedApps.declareParameters(new SqlParameter("projectId", Types.VARCHAR), new SqlParameter("releaseId", Types.DECIMAL));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("projectId", projectId);
		input.put("releaseId", releaseId);

		Map<String, Object> data = procImpactedApps.execute(input);
		
		List<ApplicationData> appData = (List<ApplicationData>) data.get("appData");
		return appData;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ServiceDetail> getImpactedServices(String projectId, String releaseId) {
		SimpleJdbcCall procImpactedServices = new SimpleJdbcCall(getJdbcTemplate());
		
		procImpactedServices.withProcedureName("project_roadmap_detail_impacted_service")	
		.returningResultSet("impactedServices", new RowMapper<ServiceDetail>() {

			@Override
			public ServiceDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
				ServiceDetail serviceDetail = new ServiceDetail();
				serviceDetail.setServiceName(rs.getString("SERVICE_NAME"));	
				return serviceDetail;
			}
		});
		
		procImpactedServices.declareParameters(new SqlParameter("projectId", Types.VARCHAR), new SqlParameter("releaseId", Types.DECIMAL));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("projectId", projectId);
		input.put("releaseId", releaseId);

		Map<String, Object> data = procImpactedServices.execute(input);
		
		List<ServiceDetail> impactedServices = (List<ServiceDetail>) data.get("impactedServices");
		return impactedServices;
	}

}

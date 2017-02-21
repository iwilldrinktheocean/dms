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

import com.dms.model.ProjectTrackDetail;
import com.dms.model.ServiceDetail;
import com.dms.app.data.mappers.tracker.ProjectDetailRowMapper;
import com.dms.app.data.mappers.tracker.ProjectTrackDetailRowMapper;
import com.dms.app.data.mappers.tracker.ServiceRequirementRowMapper;
import com.dms.model.ProjectDetail;
import com.dms.model.ServiceRequirement;
import com.dms.model.ServiceTrackerDetail;

/**
 * @author Richa Prasad
 *
 */
@Repository
public class ServiceTrackerDaoImpl extends BaseDao implements ServiceTrackerDao {

	@Override
	public List<ServiceDetail> getAllServices() {
		List<ServiceDetail> serviceDetails = getJdbcTemplate().query(
				"select serviceID, serviceName from Services", new RowMapper<ServiceDetail>() {

			@Override
			public ServiceDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
				ServiceDetail serviceDetail = new ServiceDetail();
				serviceDetail.setServiceID(rs.getString("serviceID"));  
				serviceDetail.setServiceName(rs.getString("serviceName"));
				return serviceDetail;
			}
		});
		return serviceDetails;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProjectDetail> getOperationalActProjectsInProgress(String releaseId, String serviceID) {
		SimpleJdbcCall procOpsActPrjInProgress = new SimpleJdbcCall(getJdbcTemplate());
		
		procOpsActPrjInProgress.withProcedureName("tracker_Ops_projects_completed")	
		.returningResultSet("projectDetails", new ProjectDetailRowMapper())
		.declareParameters(new SqlParameter("releaseId", Types.DECIMAL), new SqlParameter("serviceID", Types.VARCHAR));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("releaseId", releaseId);
		input.put("serviceID", serviceID);

		Map<String, Object> data = procOpsActPrjInProgress.execute(input);
		
		List<ProjectDetail> projectDetails = (List<ProjectDetail>) data.get("projectDetails");
		return projectDetails;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProjectDetail> getOperationalActProjectsCompleted(String serviceID) {
		SimpleJdbcCall procOpsActPrjCompleted = new SimpleJdbcCall(getJdbcTemplate());
		
		procOpsActPrjCompleted.withProcedureName("tracker_Ops_projects_completed")	
		.returningResultSet("projectDetails", new ProjectDetailRowMapper())
		.declareParameters(new SqlParameter("serviceID", Types.VARCHAR));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("serviceID", serviceID);

		Map<String, Object> data = procOpsActPrjCompleted.execute(input);
		
		List<ProjectDetail> projectDetails = (List<ProjectDetail>) data.get("projectDetails");
		return projectDetails;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProjectTrackDetail> getProductActPrjTrackProjectsInProgress(String serviceID) {
		SimpleJdbcCall procProdActPrjInProgress = new SimpleJdbcCall(getJdbcTemplate());
		
		procProdActPrjInProgress.withProcedureName("tracker_prod_track_projects_completed")	
		.returningResultSet("projectTrackDetails", new ProjectTrackDetailRowMapper())
		.declareParameters(new SqlParameter("serviceID", Types.VARCHAR));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("serviceID", serviceID);

		Map<String, Object> data = procProdActPrjInProgress.execute(input);
		
		List<ProjectTrackDetail> projectTrackDetails = (List<ProjectTrackDetail>) data.get("projectTrackDetails");
		return projectTrackDetails;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProjectTrackDetail> getProductActPrjTrackProjectsUnassigned(String serviceID) {
		SimpleJdbcCall procProdActPrjUnassigned = new SimpleJdbcCall(getJdbcTemplate());
		
		procProdActPrjUnassigned.withProcedureName("tracker_prod_track_projects_completed")	
		.returningResultSet("projectTrackDetails", new ProjectTrackDetailRowMapper())
		.declareParameters(new SqlParameter("serviceID", Types.VARCHAR));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("serviceID", serviceID);

		Map<String, Object> data = procProdActPrjUnassigned.execute(input);
		
		List<ProjectTrackDetail> projectTrackDetails = (List<ProjectTrackDetail>) data.get("projectTrackDetails");
		return projectTrackDetails;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProjectTrackDetail> getProductActPrjTrackProjectsCompleted(String serviceID) {
		SimpleJdbcCall procProdActPrjCompleted = new SimpleJdbcCall(getJdbcTemplate());
		
		procProdActPrjCompleted.withProcedureName("tracker_prod_track_projects_completed")	
		.returningResultSet("projectTrackDetails", new ProjectTrackDetailRowMapper())
		.declareParameters(new SqlParameter("serviceID", Types.VARCHAR));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("serviceID", serviceID);

		Map<String, Object> data = procProdActPrjCompleted.execute(input);
		
		List<ProjectTrackDetail> projectTrackDetails = (List<ProjectTrackDetail>) data.get("projectTrackDetails");
		return projectTrackDetails;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ServiceRequirement> getProductActReqToService(String serviceID) {
		SimpleJdbcCall procProdActReqToService = new SimpleJdbcCall(getJdbcTemplate());
		
		procProdActReqToService.withProcedureName("tracker_prod_req_to_service")	
		.returningResultSet("serviceReq", new ServiceRequirementRowMapper())
		.declareParameters(new SqlParameter("serviceID", Types.VARCHAR));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("serviceID", serviceID);

		Map<String, Object> data = procProdActReqToService.execute(input);
		
		List<ServiceRequirement> serviceReq = (List<ServiceRequirement>) data.get("serviceReq");
		return serviceReq;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ServiceRequirement> getProductActReqAcrossAllServices(String serviceID) {
		SimpleJdbcCall procProdActReqAllService = new SimpleJdbcCall(getJdbcTemplate());
		
		procProdActReqAllService.withProcedureName("tracker_prod_req_to_service")	
		.returningResultSet("serviceReq", new ServiceRequirementRowMapper())
		.declareParameters(new SqlParameter("serviceID", Types.VARCHAR));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("serviceID", serviceID);

		Map<String, Object> data = procProdActReqAllService.execute(input);
		
		List<ServiceRequirement> serviceReq = (List<ServiceRequirement>) data.get("serviceReq");
		return serviceReq;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ServiceTrackerDetail getTotalProjectsAndReqOrCapabilities(String serviceID) {
		SimpleJdbcCall procServiceTracker = new SimpleJdbcCall(getJdbcTemplate());
		
		procServiceTracker.withProcedureName("tracker_details")	
		.returningResultSet("data", new RowMapper<ServiceTrackerDetail>() {

			@Override
			public ServiceTrackerDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
				ServiceTrackerDetail serviceTrackerDetail = new ServiceTrackerDetail();
				serviceTrackerDetail.setTotalProjects(rs.getLong("TOTAL_PROJECTS"));
				serviceTrackerDetail.setTotalReqOrCapabilities(rs.getLong("REQ_CAPABILITIES"));
				return serviceTrackerDetail;
			}
		});
		
		procServiceTracker.declareParameters(new SqlParameter("serviceID", Types.VARCHAR));
		
		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("serviceID", serviceID);

		Map<String, Object> data = procServiceTracker.execute(input);
		
		List<ServiceTrackerDetail> trackerData = (List<ServiceTrackerDetail>) data.get("data");
		return trackerData.get(0);
	}

}

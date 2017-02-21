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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

import com.dms.app.data.mappers.AdministrationResponseRowMapper;
import com.dms.app.data.mappers.DeliveryRoadMapResponseRowMapper;
import com.dms.app.data.mappers.DependencyByServiceResponseRowMapper;
import com.dms.app.data.mappers.DependencyMetricResponseRowMapper;
import com.dms.app.data.mappers.DependencyRelationshipMgmtResponseRowMapper;
import com.dms.app.data.mappers.ResourceAllocationResponseRowMapper;
import com.dms.app.response.AdministrationResponse;
import com.dms.app.response.DeliveryRoadMapResponse;
import com.dms.app.response.DependencyByServiceResponse;
import com.dms.app.response.DependencyMetricResponse;
import com.dms.app.response.DependencyRelationshipMgmtResponse;
import com.dms.app.response.ResourceAllocationResponse;
import com.dms.model.ReleaseDetail;

/**
 * @author Richa Prasad
 *
 */
@Repository
public class ReleaseDependencyDaoImpl implements ReleaseDependencyDao {
	
	@Autowired
	private BaseDao baseDao;

	@Override
	public List<ReleaseDetail> getReleaseDetails() {
		List<ReleaseDetail> releasesList = baseDao.getJdbcTemplate().query(
				"select ReleaseId, ReleaseNum, ReleaseDate, ReleaseDesc from ReleasesView",
				new RowMapper<ReleaseDetail>() {
					public ReleaseDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
						ReleaseDetail ReleaseDetail = new ReleaseDetail();
						ReleaseDetail.setReleaseId(rs.getLong("ReleaseId"));
						ReleaseDetail.setReleaseNum(rs.getDouble("ReleaseNum"));
						ReleaseDetail.setReleaseDate(rs.getDate("ReleaseDate"));
						ReleaseDetail.setReleaseDesc(rs.getString("ReleaseDesc"));
						return ReleaseDetail;
					}
				});

		return releasesList;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public AdministrationResponse getAdministrationSummary(String releaseNum) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("dep_administration")
				.returningResultSet("admins", new AdministrationResponseRowMapper())
				.declareParameters(new SqlParameter("in_releasenum", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("in_releasenum", releaseNum);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<AdministrationResponse> administrationResponseList = (List<AdministrationResponse>) m.get("admins");
		AdministrationResponse administrationResponse = administrationResponseList.get(0);
		return administrationResponse;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public DeliveryRoadMapResponse getDeliveryRoadMapSummary(String releaseId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("dep_delivery_roadmap")
				.returningResultSet("admins", new DeliveryRoadMapResponseRowMapper())
				.declareParameters(new SqlParameter("in_releaseId", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("in_releaseId", releaseId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<DeliveryRoadMapResponse> deliveryRoadMapResponseList = (List<DeliveryRoadMapResponse>) m.get("admins");
		DeliveryRoadMapResponse deliveryRoadMapResponse = deliveryRoadMapResponseList.get(0);
		return deliveryRoadMapResponse;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public ResourceAllocationResponse getResourceAllocationSummary(
			String releaseId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("dep_resource_allocation")
				.returningResultSet("admins", new ResourceAllocationResponseRowMapper())
				.declareParameters(new SqlParameter("in_releaseId", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("in_releaseId", releaseId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<ResourceAllocationResponse> ResourceAllocationResponseList = (List<ResourceAllocationResponse>) m.get("admins");
		ResourceAllocationResponse resourceAllocationResponse = ResourceAllocationResponseList.get(0);
		return resourceAllocationResponse;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public DependencyRelationshipMgmtResponse getDependencyRelationshipMgmtSummary(
			String releaseId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("dep_relationship_management")
				.returningResultSet("admins", new DependencyRelationshipMgmtResponseRowMapper())
				.declareParameters(new SqlParameter("in_releaseId", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("in_releaseId", releaseId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<DependencyRelationshipMgmtResponse> dependencyRelationshipMgmtResponseList = (List<DependencyRelationshipMgmtResponse>) m.get("admins");
		DependencyRelationshipMgmtResponse dependencyRelationshipMgmtResponse = dependencyRelationshipMgmtResponseList.get(0);
		return dependencyRelationshipMgmtResponse;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public DependencyByServiceResponse getDependencyByServiceSummary(
			String releaseId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("dep_by_service")
				.returningResultSet("admins", new DependencyByServiceResponseRowMapper())
				.declareParameters(new SqlParameter("in_releaseId", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("in_releaseId", releaseId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<DependencyByServiceResponse> dependencyByServiceResponseList = (List<DependencyByServiceResponse>) m.get("admins");
		DependencyByServiceResponse dependencyByServiceResponse = dependencyByServiceResponseList.get(0);
		return dependencyByServiceResponse;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public DependencyMetricResponse getDependencyMetricSummary(String releaseId) {
		SimpleJdbcCall procReadAdminSummary = (new SimpleJdbcCall(baseDao.getJdbcTemplate())).withProcedureName("dep_reporting_metrics")
				.returningResultSet("admins", new DependencyMetricResponseRowMapper())
				.declareParameters(new SqlParameter("in_releaseId", Types.DECIMAL));

		HashMap<String, Object> input = new HashMap<String, Object>();
		input.put("in_releaseId", releaseId);

		Map<String, Object> m = procReadAdminSummary.execute(input);

		List<DependencyMetricResponse> dependencyMetricResponseList = (List<DependencyMetricResponse>) m.get("admins");
		DependencyMetricResponse dependencyMetricResponse = dependencyMetricResponseList.get(0);
		
		return dependencyMetricResponse;
	}

}

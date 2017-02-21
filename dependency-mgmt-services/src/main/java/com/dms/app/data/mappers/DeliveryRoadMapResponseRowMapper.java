/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.DeliveryRoadMapResponse;

/**
 * @author stammiredd001
 *
 */
public class DeliveryRoadMapResponseRowMapper implements RowMapper<DeliveryRoadMapResponse>{

	@Override
	public DeliveryRoadMapResponse mapRow(ResultSet rs, int rowNum) throws SQLException {
	DeliveryRoadMapResponse deliveryRoadMapResponse = new DeliveryRoadMapResponse();
	deliveryRoadMapResponse.setNoOfProjects(rs.getLong("PROJECTS"));
	deliveryRoadMapResponse.setNoOfApplications(rs.getLong("APPLICATIONS"));
	deliveryRoadMapResponse.setRoadMapStatus(rs.getString("STATUS"));
	deliveryRoadMapResponse.setDevelopmentCosts(rs.getBigDecimal("DEV_COST"));
	deliveryRoadMapResponse.setCostSavings(rs.getBigDecimal("COST_SAVINGS"));
	deliveryRoadMapResponse.setRelease(rs.getDouble("RELEASE_NO"));
	return deliveryRoadMapResponse;
	}


}

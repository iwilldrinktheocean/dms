/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.app.response.BudgetReportingResponse;

/**
 * @author Richa Prasad
 *
 */
public class BudgetReportingResponseRowMapper implements RowMapper<BudgetReportingResponse> {

	@Override
	public BudgetReportingResponse mapRow(ResultSet rs, int rowNum)
			throws SQLException {
		BudgetReportingResponse budgetReportingResponse = new BudgetReportingResponse();
		budgetReportingResponse.setReleaseBudget(rs.getBigDecimal("RELEASE_BUDGET"));
		budgetReportingResponse.setBudgetUsed(rs.getBigDecimal("BUDGET_USED"));
		budgetReportingResponse.setCostOfFTE(rs.getBigDecimal("FTE_COST"));
		budgetReportingResponse.setInfraCost(rs.getBigDecimal("INFRA_COST"));
		return budgetReportingResponse;
	}



}

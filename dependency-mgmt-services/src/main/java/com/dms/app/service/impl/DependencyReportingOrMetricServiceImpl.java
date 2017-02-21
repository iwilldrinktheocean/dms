/**
 * 
 */
package com.dms.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dms.app.data.DependencyReportingOrMetricServiceDao;
import com.dms.app.response.BudgetReportingResponse;
import com.dms.app.response.CapabilitiesOrRequirementsReportingResponse;
import com.dms.app.response.ConflictsReportingResponse;
import com.dms.app.response.DynamicReportingResponse;
import com.dms.app.response.FTERAllocationReportingResponse;
import com.dms.app.response.ProgramOrProjectReportingResponse;
import com.dms.app.service.DependencyReportingOrMetricService;

/**
 * @author Richa Prasad
 *
 */
@Service
public class DependencyReportingOrMetricServiceImpl implements DependencyReportingOrMetricService{
	
	@Autowired DependencyReportingOrMetricServiceDao dependencyReportingOrMetricServiceDao;

	@Override
	public DynamicReportingResponse getDynamicReportingSummary(String releaseId) {
		return dependencyReportingOrMetricServiceDao.getDynamicReportingSummary(releaseId);
	}

	@Override
	public BudgetReportingResponse getBudgetReportingSummary(String releaseId) {
		return dependencyReportingOrMetricServiceDao.getBudgetReportingSummary(releaseId);
	}

	@Override
	public FTERAllocationReportingResponse getFTEAllocationReportingSummary(
			String releaseId) {
		return dependencyReportingOrMetricServiceDao.getFTEAllocationReportingSummary(releaseId);
	}

	@Override
	public ConflictsReportingResponse getDependencyConflictsReportingSummary(
			String releaseId) {
		return dependencyReportingOrMetricServiceDao.getDependencyConflictsReportingSummary(releaseId);
	}

	@Override
	public ProgramOrProjectReportingResponse getProgramOrProjectReportingSummary(
			String releaseId) {
		return dependencyReportingOrMetricServiceDao.getProgramOrProjectReportingSummary(releaseId);
	}

	@Override
	public CapabilitiesOrRequirementsReportingResponse getCapabilityOrRequirementsReportingSummary(
			String releaseId) {
		return dependencyReportingOrMetricServiceDao.getCapabilityOrRequirementsReportingSummary(releaseId);
	}


	

}

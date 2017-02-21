/**
 * 
 */
package com.dms.app.service;

import org.springframework.stereotype.Repository;

import com.dms.app.response.BudgetReportingResponse;
import com.dms.app.response.CapabilitiesOrRequirementsReportingResponse;
import com.dms.app.response.ConflictsReportingResponse;
import com.dms.app.response.DynamicReportingResponse;
import com.dms.app.response.FTERAllocationReportingResponse;
import com.dms.app.response.ProgramOrProjectReportingResponse;

/**
 * @author Richa Prasad
 *
 */
@Repository
public interface DependencyReportingOrMetricService {
	
	public DynamicReportingResponse getDynamicReportingSummary(String releaseId);

	public BudgetReportingResponse getBudgetReportingSummary(String releaseId);

	public FTERAllocationReportingResponse getFTEAllocationReportingSummary(String releaseId);

	public ConflictsReportingResponse getDependencyConflictsReportingSummary(String releaseId);

	public ProgramOrProjectReportingResponse getProgramOrProjectReportingSummary(String releaseId);

	public CapabilitiesOrRequirementsReportingResponse getCapabilityOrRequirementsReportingSummary(String releaseId);

}

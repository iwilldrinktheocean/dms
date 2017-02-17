/**
 * 
 */
package com.dms.app.response.relationship;

import com.dms.app.response.BaseResponse;

/**
 * @author PWC
 *
 */
public class DependencyRelationshipReportResponse extends BaseResponse {

	private CapabilityRelationshipBuilderResponse capabilityRelationshipBuilder = new CapabilityRelationshipBuilderResponse();
	private AppRelationshipBuilderResponse appRelationshipBuilder = new AppRelationshipBuilderResponse();
	private ReleaseRelationshipBuilderResponse releaseRelationshipBuilder = new ReleaseRelationshipBuilderResponse();
	private ProcessRelationshipBuilderResponse processRelationshipBuilder = new ProcessRelationshipBuilderResponse();
	private ProjectRelationshipBuilderResponse projectRelationshipBuilder = new ProjectRelationshipBuilderResponse();
	private ServiceRelationshipBuilderResponse serviceRelationshipBuilder = new ServiceRelationshipBuilderResponse();

	/**
	 * @return the capabilityRelationshipBuilder
	 */
	public CapabilityRelationshipBuilderResponse getCapabilityRelationshipBuilder() {
		return capabilityRelationshipBuilder;
	}

	/**
	 * @param capabilityRelationshipBuilder
	 *            the capabilityRelationshipBuilder to set
	 */
	public void setCapabilityRelationshipBuilder(CapabilityRelationshipBuilderResponse capabilityRelationshipBuilder) {
		this.capabilityRelationshipBuilder = capabilityRelationshipBuilder;
	}

	/**
	 * @return the appRelationshipBuilder
	 */
	public AppRelationshipBuilderResponse getAppRelationshipBuilder() {
		return appRelationshipBuilder;
	}

	/**
	 * @param appRelationshipBuilder
	 *            the appRelationshipBuilder to set
	 */
	public void setAppRelationshipBuilder(AppRelationshipBuilderResponse appRelationshipBuilder) {
		this.appRelationshipBuilder = appRelationshipBuilder;
	}

	/**
	 * @return the releaseRelationshipBuilder
	 */
	public ReleaseRelationshipBuilderResponse getReleaseRelationshipBuilder() {
		return releaseRelationshipBuilder;
	}

	/**
	 * @param releaseRelationshipBuilder
	 *            the releaseRelationshipBuilder to set
	 */
	public void setReleaseRelationshipBuilder(ReleaseRelationshipBuilderResponse releaseRelationshipBuilder) {
		this.releaseRelationshipBuilder = releaseRelationshipBuilder;
	}

	/**
	 * @return the processRelationshipBuilder
	 */
	public ProcessRelationshipBuilderResponse getProcessRelationshipBuilder() {
		return processRelationshipBuilder;
	}

	/**
	 * @param processRelationshipBuilder
	 *            the processRelationshipBuilder to set
	 */
	public void setProcessRelationshipBuilder(ProcessRelationshipBuilderResponse processRelationshipBuilder) {
		this.processRelationshipBuilder = processRelationshipBuilder;
	}

	/**
	 * @return the projectRelationshipBuilder
	 */
	public ProjectRelationshipBuilderResponse getProjectRelationshipBuilder() {
		return projectRelationshipBuilder;
	}

	/**
	 * @param projectRelationshipBuilder
	 *            the projectRelationshipBuilder to set
	 */
	public void setProjectRelationshipBuilder(ProjectRelationshipBuilderResponse projectRelationshipBuilder) {
		this.projectRelationshipBuilder = projectRelationshipBuilder;
	}

	/**
	 * @return the serviceRelationshipBuilder
	 */
	public ServiceRelationshipBuilderResponse getServiceRelationshipBuilder() {
		return serviceRelationshipBuilder;
	}

	/**
	 * @param serviceRelationshipBuilder
	 *            the serviceRelationshipBuilder to set
	 */
	public void setServiceRelationshipBuilder(ServiceRelationshipBuilderResponse serviceRelationshipBuilder) {
		this.serviceRelationshipBuilder = serviceRelationshipBuilder;
	}
}

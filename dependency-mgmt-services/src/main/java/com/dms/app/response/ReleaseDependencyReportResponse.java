/**
 * 
 */
package com.dms.app.response;


/**
 * @author PWC
 *
 */
public class ReleaseDependencyReportResponse extends BaseResponse{

	private DependencyMetricResponse dependencyMetric=new DependencyMetricResponse();
	private DependencyByServiceResponse  dependencyByService=new DependencyByServiceResponse();
	private DependencyRelationshipMgmtResponse dependencyRelationshipManagement=new DependencyRelationshipMgmtResponse();
	private ResourceAllocationResponse resourceAllocation=new ResourceAllocationResponse();
	private DeliveryRoadMapResponse deliveryRoadmap=new DeliveryRoadMapResponse();
	private AdministrationResponse administration=new AdministrationResponse();
	/**
	 * @return the dependencyMetric
	 */
	public DependencyMetricResponse getDependencyMetric() {
		return dependencyMetric;
	}
	/**
	 * @param dependencyMetric the dependencyMetric to set
	 */
	public void setDependencyMetric(DependencyMetricResponse dependencyMetric) {
		this.dependencyMetric = dependencyMetric;
	}
	/**
	 * @return the dependencyByService
	 */
	public DependencyByServiceResponse getDependencyByService() {
		return dependencyByService;
	}
	/**
	 * @param dependencyByService the dependencyByService to set
	 */
	public void setDependencyByService(
			DependencyByServiceResponse dependencyByService) {
		this.dependencyByService = dependencyByService;
	}
	/**
	 * @return the dependencyRelationshipManagement
	 */
	public DependencyRelationshipMgmtResponse getDependencyRelationshipManagement() {
		return dependencyRelationshipManagement;
	}
	/**
	 * @param dependencyRelationshipManagement the dependencyRelationshipManagement to set
	 */
	public void setDependencyRelationshipManagement(
			DependencyRelationshipMgmtResponse dependencyRelationshipManagement) {
		this.dependencyRelationshipManagement = dependencyRelationshipManagement;
	}
	/**
	 * @return the resourceAllocation
	 */
	public ResourceAllocationResponse getResourceAllocation() {
		return resourceAllocation;
	}
	/**
	 * @param resourceAllocation the resourceAllocation to set
	 */
	public void setResourceAllocation(ResourceAllocationResponse resourceAllocation) {
		this.resourceAllocation = resourceAllocation;
	}
	/**
	 * @return the deliveryRoadmap
	 */
	public DeliveryRoadMapResponse getDeliveryRoadmap() {
		return deliveryRoadmap;
	}
	/**
	 * @param deliveryRoadmap the deliveryRoadmap to set
	 */
	public void setDeliveryRoadmap(DeliveryRoadMapResponse deliveryRoadmap) {
		this.deliveryRoadmap = deliveryRoadmap;
	}
	/**
	 * @return the administration
	 */
	public AdministrationResponse getAdministration() {
		return administration;
	}
	/**
	 * @param administration the administration to set
	 */
	public void setAdministration(AdministrationResponse administration) {
		this.administration = administration;
	}
	
	

	
}

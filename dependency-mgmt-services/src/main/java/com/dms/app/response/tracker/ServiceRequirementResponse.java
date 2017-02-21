package com.dms.app.response.tracker;

import java.util.List;

import com.dms.app.response.BaseResponse;
import com.dms.model.ServiceRequirement;

/**
 * @author Richa Prasad
 *
 */
public class ServiceRequirementResponse extends BaseResponse {

	private List<ServiceRequirement> serviceRequirements;

	/**
	 * @return the serviceRequirements
	 */
	public List<ServiceRequirement> getServiceRequirements() {
		return serviceRequirements;
	}

	/**
	 * @param serviceRequirements the serviceRequirements to set
	 */
	public void setServiceRequirements(List<ServiceRequirement> serviceRequirements) {
		this.serviceRequirements = serviceRequirements;
	}
}

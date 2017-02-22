/**
 * 
 */
package com.dms.app.response.tracker;

import java.util.List;

import com.dms.app.model.ServiceDetail;
import com.dms.app.response.BaseResponse;

/**
 * @author Richa Prasad
 *
 */
public class ServiceNamesResponse extends BaseResponse {

	private List<ServiceDetail> serviceDetails;

	/**
	 * @return the serviceDetails
	 */
	public List<ServiceDetail> getServiceDetails() {
		return serviceDetails;
	}

	/**
	 * @param serviceDetails the serviceDetails to set
	 */
	public void setServiceDetails(List<ServiceDetail> serviceDetails) {
		this.serviceDetails = serviceDetails;
	}
}

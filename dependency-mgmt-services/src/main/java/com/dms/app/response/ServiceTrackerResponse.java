/**
 * 
 */
package com.dms.app.response;

import com.dms.app.model.ServiceTrackerDetail;

/**
 * @author Richa Prasad
 *
 */
public class ServiceTrackerResponse extends BaseResponse {

	private ServiceTrackerDetail serviceTrackerDetail;

	/**
	 * @return the serviceTrackerDetail
	 */
	public ServiceTrackerDetail getServiceTrackerDetail() {
		return serviceTrackerDetail;
	}

	/**
	 * @param serviceTrackerDetail the serviceTrackerDetail to set
	 */
	public void setServiceTrackerDetail(ServiceTrackerDetail serviceTrackerDetail) {
		this.serviceTrackerDetail = serviceTrackerDetail;
	}
}

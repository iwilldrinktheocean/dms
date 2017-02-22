/**
 * 
 */
package com.dms.app.response.tracker;

import com.dms.app.model.ServiceTrackerDetail;
import com.dms.app.response.BaseResponse;

/**
 * @author rprasad017
 *
 */
public class ServiceTrackerDetailResponse extends BaseResponse {

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

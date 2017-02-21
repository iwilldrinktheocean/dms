/**
 * 
 */
package com.dms.app.response;

import java.util.List;

import com.dms.app.model.ServiceMaintenanceTableModel;

/**
 * @author Richa Prasad
 *
 */
public class ServiceMaintenanceTableResponse extends BaseResponse {
	private List<ServiceMaintenanceTableModel> serviceTableList;

	/**
	 * @return the serviceTableList
	 */
	public List<ServiceMaintenanceTableModel> getServiceTableList() {
		return serviceTableList;
	}

	/**
	 * @param serviceTableList the serviceTableList to set
	 */
	public void setServiceTableList(List<ServiceMaintenanceTableModel> serviceTableList) {
		this.serviceTableList = serviceTableList;
	}
}
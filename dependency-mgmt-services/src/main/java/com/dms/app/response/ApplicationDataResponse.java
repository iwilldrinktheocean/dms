/**
 * 
 */
package com.dms.app.response;

import java.util.List;

import com.dms.app.model.ApplicationData;

/**
 * @author Richa Prasad
 *
 */
public class ApplicationDataResponse extends BaseResponse {

	private List<ApplicationData> applicationData;

	/**
	 * @return the applicationData
	 */
	public List<ApplicationData> getApplicationData() {
		return applicationData;
	}

	/**
	 * @param applicationData the applicationData to set
	 */
	public void setApplicationData(List<ApplicationData> applicationData) {
		this.applicationData = applicationData;
	}
}

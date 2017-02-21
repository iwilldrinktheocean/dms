/**
 * 
 */
package com.dms.app.response;

import java.util.List;

import com.dms.app.model.CapabilitiesModel;

/**
 * @author Richa Prasad
 *
 */
public class CapabilitiesResponse extends BaseResponse {
	private List<CapabilitiesModel> capabilities;

	/**
	 * @return the capabilities
	 */
	public List<CapabilitiesModel> getCapabilities() {
		return capabilities;
	}

	/**
	 * @param capabilities the capabilities to set
	 */
	public void setCapabilities(List<CapabilitiesModel> capabilities) {
		this.capabilities = capabilities;
	}

}

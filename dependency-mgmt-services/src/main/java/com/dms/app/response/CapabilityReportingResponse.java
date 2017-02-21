/**
 * 
 */
package com.dms.app.response;

import java.util.List;

import com.dms.app.model.CapabilityReportingModel;

/**
 * @author Richa Prasad
 *
 */
public class CapabilityReportingResponse extends BaseResponse {
	
	private Boolean crFlag;
	private Boolean gapFlag;
	private Boolean kdFlag;
	private Boolean rqFlag;
	private List<CapabilityReportingModel> capabilityReporting;
	
	/**
	 * @return the crFlag
	 */
	public Boolean getCrFlag() {
		return crFlag;
	}

	/**
	 * @param crFlag the crFlag to set
	 */
	public void setCrFlag(Boolean crFlag) {
		this.crFlag = crFlag;
	}

	/**
	 * @return the gapFlag
	 */
	public Boolean getGapFlag() {
		return gapFlag;
	}

	/**
	 * @param gapFlag the gapFlag to set
	 */
	public void setGapFlag(Boolean gapFlag) {
		this.gapFlag = gapFlag;
	}

	/**
	 * @return the kdFlag
	 */
	public Boolean getKdFlag() {
		return kdFlag;
	}

	/**
	 * @param kdFlag the kdFlag to set
	 */
	public void setKdFlag(Boolean kdFlag) {
		this.kdFlag = kdFlag;
	}

	/**
	 * @return the capabilityReporting
	 */
	public List<CapabilityReportingModel> getCapabilityReporting() {
		return capabilityReporting;
	}

	/**
	 * @param capabilityReporting the capabilityReporting to set
	 */
	public void setCapabilityReporting(
			List<CapabilityReportingModel> capabilityReporting) {
		this.capabilityReporting = capabilityReporting;
	}

	/**
	 * @return the rqFlag
	 */
	public Boolean getRqFlag() {
		return rqFlag;
	}

	/**
	 * @param rqFlag the rqFlag to set
	 */
	public void setRqFlag(Boolean rqFlag) {
		this.rqFlag = rqFlag;
	}

	
	
	

}

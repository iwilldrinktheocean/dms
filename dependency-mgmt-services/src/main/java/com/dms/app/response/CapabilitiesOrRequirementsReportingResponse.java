/**
 * 
 */
package com.dms.app.response;

import java.math.BigDecimal;

/**
 * @author Richa Prasad
 *
 */
public class CapabilitiesOrRequirementsReportingResponse extends BaseResponse {

  private Long noOfCapabilities;
  private BigDecimal capabilitiesCost;
  private Long capInUse;
  private Long capNotUsed;
/**
 * @return the noOfCapabilities
 */
public Long getNoOfCapabilities() {
	return noOfCapabilities;
}
/**
 * @param noOfCapabilities the noOfCapabilities to set
 */
public void setNoOfCapabilities(Long noOfCapabilities) {
	this.noOfCapabilities = noOfCapabilities;
}
/**
 * @return the capabilitiesCost
 */
public BigDecimal getCapabilitiesCost() {
	return capabilitiesCost;
}
/**
 * @param capabilitiesCost the capabilitiesCost to set
 */
public void setCapabilitiesCost(BigDecimal capabilitiesCost) {
	this.capabilitiesCost = capabilitiesCost;
}
/**
 * @return the capInUse
 */
public Long getCapInUse() {
	return capInUse;
}
/**
 * @param capInUse the capInUse to set
 */
public void setCapInUse(Long capInUse) {
	this.capInUse = capInUse;
}
/**
 * @return the capNotUsed
 */
public Long getCapNotUsed() {
	return capNotUsed;
}
/**
 * @param capNotUsed the capNotUsed to set
 */
public void setCapNotUsed(Long capNotUsed) {
	this.capNotUsed = capNotUsed;
}
  

}

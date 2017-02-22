/**
 * 
 */
package com.dms.app.model;

/**
 * @author Richa Prasad
 *
 */
public class ServiceRequirement {

	private Long atts;
	private String rfp;
	private String description;
	/**
	 * @return the atts
	 */
	public Long getAtts() {
		return atts;
	}
	/**
	 * @param atts the atts to set
	 */
	public void setAtts(Long atts) {
		this.atts = atts;
	}
	/**
	 * @return the rfp
	 */
	public String getRfp() {
		return rfp;
	}
	/**
	 * @param rfp the rfp to set
	 */
	public void setRfp(String rfp) {
		this.rfp = rfp;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
}

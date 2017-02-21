/**
 * 
 */
package com.dms.app.response;

import java.math.BigDecimal;

/**
 * @author Richa Prasad
 *
 */
public class ProgramOrProjectReportingResponse extends BaseResponse {
	
	private Long noOfPrograms;
	private Long noOfProjects;
	private BigDecimal programCosts;
	private BigDecimal projectCosts;
	/**
	 * @return the noOfPrograms
	 */
	public Long getNoOfPrograms() {
		return noOfPrograms;
	}
	/**
	 * @param noOfPrograms the noOfPrograms to set
	 */
	public void setNoOfPrograms(Long noOfPrograms) {
		this.noOfPrograms = noOfPrograms;
	}
	/**
	 * @return the noOfProjects
	 */
	public Long getNoOfProjects() {
		return noOfProjects;
	}
	/**
	 * @param noOfProjects the noOfProjects to set
	 */
	public void setNoOfProjects(Long noOfProjects) {
		this.noOfProjects = noOfProjects;
	}
	/**
	 * @return the programCosts
	 */
	public BigDecimal getProgramCosts() {
		return programCosts;
	}
	/**
	 * @param programCosts the programCosts to set
	 */
	public void setProgramCosts(BigDecimal programCosts) {
		this.programCosts = programCosts;
	}
	/**
	 * @return the projectCosts
	 */
	public BigDecimal getProjectCosts() {
		return projectCosts;
	}
	/**
	 * @param projectCosts the projectCosts to set
	 */
	public void setProjectCosts(BigDecimal projectCosts) {
		this.projectCosts = projectCosts;
	}
	
	

	

}

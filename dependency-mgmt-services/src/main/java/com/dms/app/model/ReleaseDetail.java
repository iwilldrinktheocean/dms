/**
 * 
 */
package com.dms.app.model;

import java.util.Date;

/**
 * @author Richa Prasad
 *
 */
public class ReleaseDetail {

	private Long releaseId;
	private Double releaseNum;
	private Date releaseDate;
	private String releaseDesc;

	/**
	 * @return the releaseId
	 */
	public Long getReleaseId() {
		return releaseId;
	}

	/**
	 * @param releaseId
	 *            the releaseId to set
	 */
	public void setReleaseId(Long releaseId) {
		this.releaseId = releaseId;
	}

	/**
	 * @return the releaseNum
	 */
	public Double getReleaseNum() {
		return releaseNum;
	}

	/**
	 * @param releaseNum
	 *            the releaseNum to set
	 */
	public void setReleaseNum(Double releaseNum) {
		this.releaseNum = releaseNum;
	}

	/**
	 * @return the releaseDate
	 */
	public Date getReleaseDate() {
		return releaseDate;
	}

	/**
	 * @param releaseDate
	 *            the releaseDate to set
	 */
	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}

	/**
	 * @return the releaseDesc
	 */
	public String getReleaseDesc() {
		return releaseDesc;
	}

	/**
	 * @param releaseDesc
	 *            the releaseDesc to set
	 */
	public void setReleaseDesc(String releaseDesc) {
		this.releaseDesc = releaseDesc;
	}

}

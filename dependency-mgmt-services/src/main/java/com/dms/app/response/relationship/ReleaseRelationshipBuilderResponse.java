/**
 * 
 */
package com.dms.app.response.relationship;

import java.math.BigDecimal;

import com.dms.app.response.BaseResponse;

/**
 * @author PWC
 *
 */
public class ReleaseRelationshipBuilderResponse extends BaseResponse {
	
	private Long attribute = 961L;
	private BigDecimal totalAppCost = new BigDecimal(379826);
	private BigDecimal totalAppSavings = new BigDecimal(379);
	private Long totalFTE = 950L; // TODO what is FTE, check data type
	
	/**
	 * @return the attribute
	 */
	public Long getAttribute() {
		return attribute;
	}
	/**
	 * @param attribute the attribute to set
	 */
	public void setAttribute(Long attribute) {
		this.attribute = attribute;
	}
	/**
	 * @return the totalAppCost
	 */
	public BigDecimal getTotalAppCost() {
		return totalAppCost;
	}
	/**
	 * @param totalAppCost the totalAppCost to set
	 */
	public void setTotalAppCost(BigDecimal totalAppCost) {
		this.totalAppCost = totalAppCost;
	}
	/**
	 * @return the totalAppSavings
	 */
	public BigDecimal getTotalAppSavings() {
		return totalAppSavings;
	}
	/**
	 * @param totalAppSavings the totalAppSavings to set
	 */
	public void setTotalAppSavings(BigDecimal totalAppSavings) {
		this.totalAppSavings = totalAppSavings;
	}
	/**
	 * @return the totalFTE
	 */
	public Long getTotalFTE() {
		return totalFTE;
	}
	/**
	 * @param totalFTE the totalFTE to set
	 */
	public void setTotalFTE(Long totalFTE) {
		this.totalFTE = totalFTE;
	}
}

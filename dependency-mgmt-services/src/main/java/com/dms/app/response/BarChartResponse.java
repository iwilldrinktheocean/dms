/**
 * 
 */
package com.dms.app.response;

import java.util.List;

/**
 * @author Richa Prasad
 *
 */
public class BarChartResponse extends BaseResponse {

	private List<Long> chartData;

	/**
	 * @return the chartData
	 */
	public List<Long> getChartData() {
		return chartData;
	}

	/**
	 * @param chartData the chartData to set
	 */
	public void setChartData(List<Long> chartData) {
		this.chartData = chartData;
	}
}

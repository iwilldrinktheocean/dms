/**
 * 
 */
package com.dms.app.response;

import com.dms.app.model.KnownDifferencesGaps;

/**
 * @author Richa Prasad
 *
 */
public class KnownDifferencesGapsResponse extends BaseResponse {

	private KnownDifferencesGaps knownDifferencesGaps;

	/**
	 * @return the knownDifferencesGaps
	 */
	public KnownDifferencesGaps getKnownDifferencesGaps() {
		return knownDifferencesGaps;
	}

	/**
	 * @param knownDifferencesGaps the knownDifferencesGaps to set
	 */
	public void setKnownDifferencesGaps(KnownDifferencesGaps knownDifferencesGaps) {
		this.knownDifferencesGaps = knownDifferencesGaps;
	}
}

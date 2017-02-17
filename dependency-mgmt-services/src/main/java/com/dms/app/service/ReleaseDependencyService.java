/**
 * 
 */
package com.dms.app.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.dms.app.response.AdministrationResponse;
import com.dms.model.ReleaseDetail;

/**
 * @author PWC
 *
 */
@Service
public interface ReleaseDependencyService {
	public List<ReleaseDetail> getReleaseDetails();

	public AdministrationResponse getAdministrationSummary(String releaseNum);
}

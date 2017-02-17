/**
 * 
 */
package com.dms.app.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.dms.app.response.AdministrationResponse;
import com.dms.app.service.ReleaseDependencyService;
import com.dms.model.ReleaseDetail;

/**
 * @author PWC
 *
 */
@Service("releaseDependencyService")
public class ReleaseDependencyServiceImpl implements ReleaseDependencyService{

	/*@Autowired
	private ReleaseDependencyDao releaseDependencyDao;*/

	@Override
	public List<ReleaseDetail> getReleaseDetails() {
		//return releaseDependencyDao.getReleaseDetails();
		return null;
	}

	@Override
	public AdministrationResponse getAdministrationSummary(String releaseNum) {
		//return releaseDependencyDao.getAdministrationSummary(releaseNum);
		return null;
	}

}

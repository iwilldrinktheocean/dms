package com.dms.app.response;

import java.util.List;

import com.dms.app.model.UserProfile;


/**
 * 
 * @author Balaji S
 *
 */
public class UserResponse extends BaseResponse {

	private List<UserProfile> userProfiles = null;

	/**
	 * @return the userProfiles
	 */
	public List<UserProfile> getUserProfiles() {
		return userProfiles;
	}

	/**
	 * @param userProfiles the userProfiles to set
	 */
	public void setUserProfiles(List<UserProfile> userProfiles) {
		this.userProfiles = userProfiles;
	}
	
}

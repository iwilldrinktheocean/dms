package com.dms.app.service;

import org.springframework.stereotype.Service;

import com.dms.app.response.UserResponse;
import com.dms.model.UserProfile;

/**
 * 
 * @author Balaji S
 *
 */

@Service
public interface UserService {

	public UserResponse createUserProfile(UserProfile userProfile) throws Exception;

	public UserResponse updateUserProfile(UserProfile userProfile) throws Exception;

	public UserResponse getUserProfile(String userName, String dbCollection) throws Exception;

	public UserResponse getUserProfiles(String dbCollection) throws Exception;

	public UserResponse deleteUserProfile(String userName, String dbCollection) throws Exception;

	public UserResponse deleteCollection(String dbCollection) throws Exception;

}
package com.dms.app.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.bson.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dms.app.connector.MongoDBConnector;
import com.dms.app.response.UserResponse;
import com.dms.app.service.UserService;
import com.dms.model.ServiceResponseStatus;
import com.dms.model.UserProfile;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.result.DeleteResult;
import com.mongodb.client.result.UpdateResult;

/**
 * 
 * @author Balaji S
 *
 */

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	MongoDBConnector mongoConnector;

	/**
	 * Create a new document in the given collection
	 * 
	 * @see com.vendor.app.service.UserService#createUserProfile(com.vendor.model.UserProfile)
	 */
	@Override
	public UserResponse createUserProfile(UserProfile userProfile) throws Exception {

		UserResponse userResponse = new UserResponse();

		String dbCollection = userProfile.getDbCollection();
		System.out.println("Mongo Collection Name :: " + dbCollection);

		MongoDatabase mongoDatabase = mongoConnector.getDefaultDatabase();
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection(dbCollection, Document.class);

		Document document = new Document();

		document.append("userName", userProfile.getUserName());
		document.append("firstName", userProfile.getFirstName());
		document.append("lastName", userProfile.getLastName());
		document.append("email", userProfile.getEmail());
		document.append("phoneNumber", userProfile.getPhoneNumber());

		mongoCollection.insertOne(document);

		userResponse.setStatus(ServiceResponseStatus.SUCCESS);
		userResponse.setMessage("UserProfile inserted successfully!");

		System.out.println("UserProfile inserted successfully!");

		return userResponse;
	}

	/**
	 * Update a new document in the given collection
	 * 
	 * @see com.vendor.app.service.UserService#updateUserProfile(com.vendor.model.UserProfile)
	 */
	@Override
	public UserResponse updateUserProfile(UserProfile userProfile) throws Exception {

		UserResponse userResponse = new UserResponse();

		String dbCollection = userProfile.getDbCollection();
		System.out.println("Mongo Collection Name :: " + dbCollection);

		MongoDatabase mongoDatabase = mongoConnector.getDefaultDatabase();
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection(dbCollection, Document.class);

		Document newDocument = new Document();

		newDocument.append("userName", userProfile.getUserName());
		newDocument.append("firstName", userProfile.getFirstName());
		newDocument.append("lastName", userProfile.getLastName());
		newDocument.append("email", userProfile.getEmail());
		newDocument.append("phoneNumber", userProfile.getPhoneNumber());
		newDocument.append("yearOfBirth", userProfile.getYearOfBirth());

		Document updatedDocument = new Document("$set", newDocument);

		Document filterDoc = new Document();
		filterDoc.append("userName", userProfile.getUserName());

		UpdateResult updateResult = mongoCollection.updateOne(filterDoc, updatedDocument);

		if (updateResult.getModifiedCount() > 0) {
			userResponse.setStatus(ServiceResponseStatus.SUCCESS);
			userResponse.setMessage("UserProfile updated successfully!");
		} else {
			userResponse.setStatus(ServiceResponseStatus.FAILURE);
			userResponse.setMessage("Unable to update UserProfile!");
		}

		return userResponse;
	}

	/**
	 * Retrieve all the documents that conditionally match the userName value
	 * from the given collection
	 * 
	 * @see com.vendor.app.service.UserService#getUserProfile(java.lang.String,
	 *      java.lang.String)
	 */
	@Override
	public UserResponse getUserProfile(String userName, String dbCollection) throws Exception {

		UserResponse userResponse = new UserResponse();

		System.out.println("Mongo Collection Name :: " + dbCollection);

		MongoDatabase mongoDatabase = mongoConnector.getDefaultDatabase();
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection(dbCollection, Document.class);

		Document filterDoc = new Document();
		filterDoc.append("userName", userName);

		FindIterable<Document> documents = mongoCollection.find(filterDoc);

		if (documents == null) {
			System.out.println("No documents found!!");
			userResponse.setStatus(ServiceResponseStatus.FAILURE);
			userResponse.setMessage("No UserProfile documents found!");
			return userResponse;
		}

		MongoCursor<Document> mongoCursor = documents.iterator();

		List<UserProfile> userProfiles = renderUserProfiles(mongoCursor);

		if (userProfiles.size() > 0) {
			userResponse.setUserProfiles(userProfiles);
			userResponse.setStatus(ServiceResponseStatus.SUCCESS);
			userResponse.setMessage("Retrieved UserProfile successfully!");
		} else {
			userResponse.setStatus(ServiceResponseStatus.FAILURE);
			userResponse.setMessage("No UserProfile documents found!");
		}

		return userResponse;
	}

	/**
	 * Retrieve all the documents from the given collection
	 * 
	 * @see com.vendor.app.service.UserService#getUserProfiles(java.lang.String)
	 */
	@Override
	public UserResponse getUserProfiles(String dbCollection) throws Exception {

		UserResponse userResponse = new UserResponse();

		System.out.println("Mongo Collection Name :: " + dbCollection);

		MongoDatabase mongoDatabase = mongoConnector.getDefaultDatabase();
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection(dbCollection, Document.class);

		FindIterable<Document> documents = mongoCollection.find();

		if (documents == null) {
			System.out.println("No documents found!!");
			userResponse.setStatus(ServiceResponseStatus.FAILURE);
			userResponse.setMessage("No UserProfile documents found!");
			return userResponse;
		}

		MongoCursor<Document> mongoCursor = documents.iterator();

		List<UserProfile> userProfiles = renderUserProfiles(mongoCursor);

		if (userProfiles.size() > 0) {
			userResponse.setUserProfiles(userProfiles);
			userResponse.setStatus(ServiceResponseStatus.SUCCESS);
			userResponse.setMessage("Retrieved UserProfile successfully!");
		} else {
			userResponse.setStatus(ServiceResponseStatus.FAILURE);
			userResponse.setMessage("No UserProfile documents found!");
		}

		return userResponse;
	}

	/**
	 * Delete the UserProfile that matches the given userName
	 * 
	 * @see com.vendor.app.service.UserService#deleteUserProfile(java.lang.String,
	 *      java.lang.String)
	 */
	@Override
	public UserResponse deleteUserProfile(String userName, String dbCollection) throws Exception {

		UserResponse userResponse = new UserResponse();

		MongoDatabase mongoDatabase = mongoConnector.getDefaultDatabase();
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection(dbCollection, Document.class);

		// Deleting a single Document matching condition
		Document filterDoc = new Document();
		filterDoc.append("userName", userName);

		DeleteResult deleteResult = mongoCollection.deleteOne(filterDoc);

		if (deleteResult.getDeletedCount() > 0) {
			userResponse.setStatus(ServiceResponseStatus.SUCCESS);
			userResponse.setMessage("UserProfile document has been deleted sucessfully!");
		} else {
			userResponse.setStatus(ServiceResponseStatus.FAILURE);
			userResponse.setMessage("Unable to delete UserProfile document!");
		}

		return userResponse;
	}

	/**
	 * Delete the given mongo Collection
	 * 
	 * @see com.vendor.app.service.UserService#deleteCollection(java.lang.String)
	 */
	@Override
	public UserResponse deleteCollection(String dbCollection) throws Exception {

		UserResponse userResponse = new UserResponse();

		MongoDatabase mongoDatabase = mongoConnector.getDefaultDatabase();
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection(dbCollection, Document.class);

		// Delete Mongo Collection
		mongoCollection.drop();

		userResponse.setStatus(ServiceResponseStatus.SUCCESS);
		userResponse.setMessage("Document collection has been deleted sucessfully!");

		return userResponse;
	}

	private List<UserProfile> renderUserProfiles(MongoCursor<Document> mongoCursor) {

		List<UserProfile> userProfiles = new ArrayList<UserProfile>();

		while (mongoCursor.hasNext()) {
			Document document = mongoCursor.next();

			UserProfile userProfile = new UserProfile();

			userProfile.setUserName((String) document.get("userName"));
			userProfile.setFirstName((String) document.get("firstName"));
			userProfile.setLastName((String) document.get("lastName"));
			userProfile.setEmail((String) document.get("email"));
			userProfile.setPhoneNumber((String) document.get("phoneNumber"));
			userProfile.setYearOfBirth((String) document.get("yearOfBirth"));

			userProfiles.add(userProfile);
		}

		int count = 0;

		System.out.println("\nTotal Documents retrieved :: " + userProfiles.size());

		// Iterate and print the user profile data
		for (UserProfile userProfile : userProfiles) {
			System.out.println("\nDocument " + ++count);
			System.out.println("userName :: " + userProfile.getUserName());
			System.out.println("firstName :: " + userProfile.getFirstName());
			System.out.println("lastName :: " + userProfile.getLastName());
			System.out.println("email :: " + userProfile.getEmail());
			System.out.println("phoneNumber :: " + userProfile.getPhoneNumber());
			System.out.println("yearOfBirth :: " + userProfile.getYearOfBirth());
		}

		return userProfiles;
	}

}
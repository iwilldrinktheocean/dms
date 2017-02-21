package com.dms.app.standalone;

import java.util.ArrayList;
import java.util.List;

import org.bson.Document;

import com.dms.app.connector.MongoDBConnector;
import com.dms.model.UserProfile;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;

/**
 * 
 * @author Balaji S
 *
 */
public class FindUserProfileProgram {

	public static void main(String args[]) {

		MongoDBConnector mongoConnector = new MongoDBConnector();
		MongoDatabase mongoDatabase = mongoConnector.getDefaultDatabase();
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("UserProfiles", Document.class);

		/*
		 * Document filterDoc = new Document(); filterDoc.append("userName",
		 * "swilliams");
		 * 
		 * FindIterable<Document> documents = mongoCollection.find(filterDoc);
		 */

		FindIterable<Document> documents = mongoCollection.find();

		if (documents == null) {
			System.out.println("No documents found!!");
			System.exit(0);
		}

		MongoCursor<Document> mongoCursor = documents.iterator();

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
	}

}
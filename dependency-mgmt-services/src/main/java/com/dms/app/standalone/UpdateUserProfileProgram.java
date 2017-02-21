package com.dms.app.standalone;

import org.bson.Document;

import com.dms.app.connector.MongoDBConnector;
import com.dms.model.UserProfile;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

/**
 * 
 * @author Balaji S
 *
 */
public class UpdateUserProfileProgram {

	public static void main(String args[]) {

		MongoDBConnector mongoConnector = new MongoDBConnector();
		MongoDatabase mongoDatabase = mongoConnector.getDefaultDatabase();
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("UserProfiles", Document.class);

		UserProfile userProfile = new UserProfile();

		userProfile.setUserName("jvincent");
		userProfile.setFirstName("Jerry");
		userProfile.setLastName("Vincent");
		userProfile.setEmail("Jerry.Silverster.Vincent@gmail.com");
		userProfile.setPhoneNumber("111-777-9999");
		userProfile.setYearOfBirth("1962");

		Document newDocument = new Document();

		newDocument.append("userName", userProfile.getUserName());
		newDocument.append("firstName", userProfile.getFirstName());
		newDocument.append("lastName", userProfile.getLastName());
		newDocument.append("email", userProfile.getEmail());
		newDocument.append("phoneNumber", userProfile.getPhoneNumber());
		newDocument.append("yearOfBirth", userProfile.getYearOfBirth());

		Document updatedDocument = new Document("$set", newDocument);

		Document filterDoc = new Document();
		filterDoc.append("userName", "jvincent");

		mongoCollection.updateOne(filterDoc, updatedDocument);
	}

}
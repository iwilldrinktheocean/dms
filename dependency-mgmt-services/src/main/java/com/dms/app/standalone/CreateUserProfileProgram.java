package com.dms.app.standalone;

import java.util.ArrayList;
import java.util.List;

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

public class CreateUserProfileProgram {

	public static void main(String args[]) {

		MongoDBConnector mongoConnector = new MongoDBConnector();
		MongoDatabase mongoDatabase = mongoConnector.getDefaultDatabase();
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("UserProfile", Document.class);

		List<UserProfile> userProfiles = new ArrayList<UserProfile>();
		UserProfile userProfile = new UserProfile();

		userProfile.setUserName("swilliams");
		userProfile.setFirstName("Stuart");
		userProfile.setLastName("Williams");
		userProfile.setEmail("stuart.williams@gmail.com");
		userProfile.setPhoneNumber("315-615-4231");
		userProfile.setYearOfBirth("1980");

		userProfiles.add(userProfile);
		userProfile = new UserProfile();

		userProfile.setUserName("vwilliams");
		userProfile.setFirstName("Venus");
		userProfile.setLastName("Williams");
		userProfile.setEmail("venus.williams@gmail.com");
		userProfile.setPhoneNumber("215-615-9231");
		userProfile.setYearOfBirth("1982");

		userProfiles.add(userProfile);
		userProfile = new UserProfile();

		userProfile.setUserName("cAdams");
		userProfile.setFirstName("Christopher");
		userProfile.setLastName("Adams");
		userProfile.setEmail("chris.adams@gmail.com");
		userProfile.setPhoneNumber("115-715-2231");
		userProfile.setYearOfBirth("1981");

		userProfiles.add(userProfile);
		userProfile = new UserProfile();

		userProfile.setUserName("janders");
		userProfile.setFirstName("Johnson");
		userProfile.setLastName("Anderson");
		userProfile.setEmail("john.anders@gmail.com");
		userProfile.setPhoneNumber("515-815-9111");
		userProfile.setYearOfBirth("1980");

		userProfiles.add(userProfile);
		userProfile = new UserProfile();

		userProfile.setUserName("mrichards");
		userProfile.setFirstName("Michael");
		userProfile.setLastName("Richardson");
		userProfile.setEmail("mike.richards@gmail.com");
		userProfile.setPhoneNumber("216-616-9266");
		userProfile.setYearOfBirth("1982");

		userProfiles.add(userProfile);
		userProfile = new UserProfile();

		userProfile.setUserName("mjack");
		userProfile.setFirstName("Michael");
		userProfile.setLastName("jack");
		userProfile.setEmail("mike.jack@gmail.com");
		userProfile.setPhoneNumber("225-226-1166");
		userProfile.setYearOfBirth("1980");

		userProfiles.add(userProfile);
		userProfile = new UserProfile();

		userProfile.setUserName("wdavid");
		userProfile.setFirstName("William");
		userProfile.setLastName("Davidson");
		userProfile.setEmail("will.davidson@gmail.com");
		userProfile.setPhoneNumber("333-444-5556");
		userProfile.setYearOfBirth("1982");

		userProfiles.add(userProfile);
		userProfile = new UserProfile();

		userProfile.setUserName("jpeters");
		userProfile.setFirstName("John");
		userProfile.setLastName("Peterson");
		userProfile.setEmail("john.peterson@gmail.com");
		userProfile.setPhoneNumber("555-666-7776");
		userProfile.setYearOfBirth("1981");

		userProfiles.add(userProfile);
		userProfile = new UserProfile();

		userProfile.setUserName("dxavier");
		userProfile.setFirstName("Dominique");
		userProfile.setLastName("Xavier");
		userProfile.setEmail("dominique.xavier@gmail.com");
		userProfile.setPhoneNumber("333-222-8889");
		userProfile.setYearOfBirth("1980");

		userProfiles.add(userProfile);
		userProfile = new UserProfile();

		userProfile.setUserName("jvincent");
		userProfile.setFirstName("Jerry");
		userProfile.setLastName("Vincent");
		userProfile.setEmail("Jerry.Vincent@gmail.com");
		userProfile.setPhoneNumber("111-777-9999");
		userProfile.setYearOfBirth("1980");

		userProfiles.add(userProfile);

		List<Document> documents = new ArrayList<Document>();

		for (UserProfile usrProfile : userProfiles) {

			Document currDoc = getDocument(usrProfile);
			documents.add(currDoc);
		}

		// mongoCollection.insertOne(document);
		mongoCollection.insertMany(documents);
	}

	private static Document getDocument(UserProfile userProfile) {
		Document document = new Document();

		document.append("userName", userProfile.getUserName());
		document.append("firstName", userProfile.getFirstName());
		document.append("lastName", userProfile.getLastName());
		document.append("email", userProfile.getEmail());
		document.append("phoneNumber", userProfile.getPhoneNumber());

		return document;
	}

}
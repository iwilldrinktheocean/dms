package com.dms.app.standalone;

import org.bson.Document;

import com.dms.app.connector.MongoDBConnector;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

/**
 * 
 * @author Balaji S
 *
 */
public class DeleteUserProfileProgram {

	public static void main(String args[]) {

		MongoDBConnector mongoConnector = new MongoDBConnector();
		MongoDatabase mongoDatabase = mongoConnector.getDefaultDatabase();
		MongoCollection<Document> mongoCollection = mongoDatabase.getCollection("UserProfiles", Document.class);

		// Delete Mongo Collection
		mongoCollection.drop();

		// Deleting a single Document matching condition
		/*
		 * Document filterDoc = new Document(); filterDoc.append("userName",
		 * "swilliams");
		 * 
		 * mongoCollection.deleteOne(filterDoc);
		 */
	}

}
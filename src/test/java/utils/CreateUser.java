package utils;

import java.util.LinkedHashMap;
import java.util.Map;


public class CreateUser {

	public static Map<String, Object> getUserInfo(){

		Map<String, Object> userInfo = new LinkedHashMap<>();

		userInfo.put("id", DataGenerator.idGenerator());
		userInfo.put("username", DataGenerator.userNameGenerator());
		userInfo.put("firstName", DataGenerator.firstNameGenerator());
		userInfo.put("lastName", DataGenerator.lastNameGenerator());
		userInfo.put("email", DataGenerator.emailGenerator());
		userInfo.put("password", DataGenerator.passwordGenerator());
		userInfo.put("phone", DataGenerator.phoneGenerator());
		userInfo.put("userStatus", DataGenerator.userStatusGenerator());

		return userInfo;

	}

/*
		{
			"id": 0,
			"username": "string",
			"firstName": "string",
			"lastName": "string",
			"email": "string",
			"password": "string",
			"phone": "string",
			"userStatus": 0
		}
*/


}

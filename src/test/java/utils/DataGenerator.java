package utils;

import com.github.javafaker.Faker;

public class DataGenerator {

	private static Faker faker = new Faker();

	public static String emailGenerator(){
		String email = faker.internet().emailAddress();
		return email;
	}

	public static long idGenerator(){
		long id = Long.parseLong(faker.numerify("##########"));
		return id;
	}

	public static String userNameGenerator(){
		String username = faker.name().username();
		return username;
	}

	public static String firstNameGenerator(){
		String firstName = faker.name().firstName();
		return firstName;
	}

	public static String lastNameGenerator(){
		String lastName = faker.name().lastName();
		return lastName;
	}

	public static String passwordGenerator(){
		String password = faker.bothify("##########");
		return password;
	}

	public static String phoneGenerator(){
		String phone = faker.phoneNumber().cellPhone();
		return phone;
	}

	public static long userStatusGenerator(){
		long userStatus = Long.valueOf(faker.numerify("#####"));
		return userStatus;
	}



}

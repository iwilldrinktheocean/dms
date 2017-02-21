package com.dms.app.standalone;

public class EmailFormatValidation {

	public static void main(String args[]) {

		// "[A-Za-z0-9._#!$&'*/=?^`{}~|%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}"

		String email = "balaji+soundararajan@pwc.com";
		boolean status = isValidEmailAddress(email);

		System.out.println("Is Valid Email Address :: " + status);
	}

	public static boolean isValidEmailAddress(String email) {

		// String ePatterns =
		// "^[A-Za-z0-9._#!$&'*/=?^`{}~|%+-]+@[A-Za-z0-9.-]+.[A-Za-z]{2,4}";
		String ePattern = "^[a-zA-Z0-9._]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
		java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
		java.util.regex.Matcher m = p.matcher(email);
		return m.matches();
	}

}

package com.model;


public class PasswordModel implements PasswordRemote{
	public static String password;
	public static int key;

	public static int getKey() {
		return key;
	}

	public static void setKey(int key) {
		PasswordModel.key = key;
	}

	public static String getPassword() {
		return password;
	}

	public static void setPassword(String password) {
		PasswordModel.password = password;
	}

	@Override
	public String encrypt() {
		String pass ="";
		for(int i=0;i<password.length();i++) {
			char c = password.charAt(i);
			int ascii = (int) c;
			if(Character.isAlphabetic(c)) {
				if(Character.isUpperCase(c)) {
					ascii = ascii+key+8;
				}
				else {
					ascii = ascii+key+4;
				}
				
			}
			else if(Character.isDigit(c)) {
				ascii = ascii+key+6;
			}
			else {
				ascii = ascii+key+3;
			}
			if(ascii>127) {
				ascii = ascii%127;
			}
			char ch = (char)ascii;
			pass +=ch;
			
		}
		
		return pass;
	}

	

}

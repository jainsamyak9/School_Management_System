package Controllers;

import java.math.BigInteger;
import java.security.MessageDigest;

public class MD5Encryption {
	private String input;
	public MD5Encryption(String minput){
		input = minput;
		
	}
	
	public String generate(){
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[]messageDigest = md.digest(input.getBytes());
			BigInteger number = new BigInteger(1, messageDigest);
			String hashtext = number.toString(16);
			while(hashtext.length() < 32){
				hashtext = "0" + hashtext;
			}
			return hashtext;
		}catch (Exception e){
			
		}
		return input;
	}
	public String getEncryption(){
		return generate();
		
	}

}

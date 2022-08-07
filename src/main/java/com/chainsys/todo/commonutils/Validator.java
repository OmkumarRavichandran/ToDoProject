package com.chainsys.todo.commonutils;


public class Validator {

	public static boolean CheckNumberForGreaterThanZero(int data) throws InvalidInputDataException {
		boolean result = false;
		if (data > 0) {
			result = true;
		} else
			throw new InvalidInputDataException();
		return result;
	}

	public static boolean checklengthOfString(String data) throws InvalidInputDataException {
		boolean result = false;
		int len = data.length();
		if (len < 3)
			throw new InvalidInputDataException("length Does not meet required length ");
		else if (len > 20)
			throw new InvalidInputDataException("length exceeds the required length");
		else
			result = true;
		return result;
	}
	public static boolean checkStringOnly(String data) throws InvalidInputDataException {
		boolean result = false;
		int len = data.length();
		for (int index = 0; index < len; index++) {
			data.toUpperCase();
			int asc = (int) data.charAt(index);
			if (asc > 64 && asc < 91) {
				result = true;
			} else if (asc > 96 && asc < 123) {
				result = true;
			} else
				throw new InvalidInputDataException("Enter Alphabets Only");
		}
		return result;
	}
}

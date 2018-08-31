package com.key.keyclient.model;

import java.util.Map;

public class Response {

	Map<String , String> outObj;
	int statusCode;
	public Map<String, String> getOutObj() {
		return outObj;
	}
	public void setOutObj(Map<String, String> outObj) {
		this.outObj = outObj;
	}
	public int getStatusCode() {
		return statusCode;
	}
	public void setStatusCode(int statusCode) {
		this.statusCode = statusCode;
	}
	
}

package com.zy.admin.system.security.support;

public class SimpleResponse {

	public SimpleResponse(Object content) {
		this.content = content;
	}

	public SimpleResponse() {

	}
	private Object content;

	public Object getContent() {
		return content;
	}

	public void setContent(Object content) {
		this.content = content;
	}

}

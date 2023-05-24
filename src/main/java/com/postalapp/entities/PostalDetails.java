package com.postalapp.entities;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class PostalDetails {
	@JsonProperty("Message")
	private String message;
	@JsonProperty("Status")
	private String status;
	@JsonProperty("PostOffice")
	PostOffice[] postOffice;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public PostOffice[] getPostOffice() {
		return postOffice;
	}

	public void setPostOffice(PostOffice[] postOffice) {
		this.postOffice = postOffice;
	}

}

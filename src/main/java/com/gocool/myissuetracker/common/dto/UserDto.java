package com.gocool.myissuetracker.common.dto;

/**
 *  user info sent through user dto.
 * @author GO-COOL
 *
 */
public class UserDto {

	private Integer id;
	private String name;
	private String email;
	private String mobile;
	private Integer points;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Integer getPoints() {
		return points;
	}

	public void setPoints(Integer points) {
		this.points = points;
	}

	@Override
	public String toString() {
		return "UserDto [id=" + id + ", name=" + name + ", email=" + email + ", mobile=" + mobile + ", points=" + points
				+ "]";
	}
}

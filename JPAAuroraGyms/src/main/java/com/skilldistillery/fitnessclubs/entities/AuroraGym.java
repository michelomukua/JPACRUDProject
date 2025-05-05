package com.skilldistillery.fitnessclubs.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "aurora_gym")
public class AuroraGym {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;
	@Column(name = "programs")
	private String programs;
	@Column(name = "street")
	private String street;
	@Column(name = "twentyfour_hour")
	private Boolean twentyFourHour;
	@Column(name = "image_url")
	private String imageUrl;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrograms() {
		return programs;
	}

	public void setPrograms(String programs) {
		this.programs = programs;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public Boolean getTwentyFourHour() {
		return twentyFourHour;
	}

	public void setTwentyFourHour(Boolean twentyFourHour) {
		this.twentyFourHour = twentyFourHour;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public AuroraGym(int id, String name, String programs, String street, Boolean twentyFourHour, String imageUrl) {
		super();
		this.id = id;
		this.name = name;
		this.programs = programs;
		this.street = street;
		this.twentyFourHour = twentyFourHour;
		this.imageUrl = imageUrl;
	}

	public AuroraGym() {
		super();
	}

	@Override
	public String toString() {
		return "AuroraGym [id=" + id + ", name=" + name + ", programs=" + programs + ", street=" + street
				+ ", twentyFourHour=" + twentyFourHour + ", imageUrl=" + imageUrl + "]";
	}
}

package com.mycom.domain;

import lombok.Data;

@Data
public class PatientVO {
	private String patid;
	private String patpw;
	private String patname;
	private long age;
	private long weight;
	private long height;
	private double temper;
	private String rash;
	private String sex;
	private String mcheck;

}

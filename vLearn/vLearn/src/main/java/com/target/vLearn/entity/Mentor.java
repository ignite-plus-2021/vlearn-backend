package com.target.vLearn.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the mentor database table.
 * 
 */
@Entity
@NamedQuery(name="Mentor.findAll", query="SELECT m FROM Mentor m")
public class Mentor implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="mentor_id")
	private Integer mentorId;

	@Column(name="mentor_name")
	private String mentorName;

	//bi-directional many-to-one association to Schedule
	@OneToMany(mappedBy="mentor")
	private List<Schedule> schedules1;

	//bi-directional many-to-one association to Schedule
//	@OneToMany(mappedBy="mentor2")
//	private List<Schedule> schedules2;

	public Mentor() {
	}

	public Integer getMentorId() {
		return this.mentorId;
	}

	public void setMentorId(Integer mentorId) {
		this.mentorId = mentorId;
	}

	public String getMentorName() {
		return this.mentorName;
	}

	public void setMentorName(String mentorName) {
		this.mentorName = mentorName;
	}

	public List<Schedule> getSchedules1() {
		return this.schedules1;
	}

	public void setSchedules1(List<Schedule> schedules1) {
		this.schedules1 = schedules1;
	}

	public Schedule addSchedules1(Schedule schedules1) {
		getSchedules1().add(schedules1);
		schedules1.setMentor(this);

		return schedules1;
	}

	public Schedule removeSchedules1(Schedule schedules1) {
		getSchedules1().remove(schedules1);
		schedules1.setMentor(null);

		return schedules1;
	}

//	public List<Schedule> getSchedules2() {
//		return this.schedules2;
//	}
//
//	public void setSchedules2(List<Schedule> schedules2) {
//		this.schedules2 = schedules2;
//	}

//	public Schedule addSchedules2(Schedule schedules2) {
//		getSchedules2().add(schedules2);
//		//schedules2.setMentor2(this);
//
//		return schedules2;
//	}
//
//	public Schedule removeSchedules2(Schedule schedules2) {
//		getSchedules2().remove(schedules2);
//		//schedules2.setMentor2(null);
//
//		return schedules2;
	//}

}
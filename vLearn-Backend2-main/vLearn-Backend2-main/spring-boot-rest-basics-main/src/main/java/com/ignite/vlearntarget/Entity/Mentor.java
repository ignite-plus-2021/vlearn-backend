package com.ignite.vlearntarget.Entity;

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

	public Mentor(List<Schedule> schedules) {
		this.schedules = schedules;
	}

	public Mentor(String mentorName) {
		this.mentorName = mentorName;
	}

	public Mentor(Integer mentorId) {
		this.mentorId = mentorId;
	}

	@Column(name="mentor_name")
	private String mentorName;

	//bi-directional many-to-one association to Schedule
	@OneToMany(mappedBy="mentor")
	private List<Schedule> schedules;

	public Mentor() {
	}

	public static long getSerialVersionUID() {
		return serialVersionUID;
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

	public List<Schedule> getSchedules() {
		return this.schedules;
	}

	public void setSchedules(List<Schedule> schedules) {
		this.schedules = schedules;
	}

	public Schedule addSchedule(Schedule schedule) {
		getSchedules().add(schedule);
		schedule.setMentor(this);

		return schedule;
	}

	public Schedule removeSchedule(Schedule schedule) {
		getSchedules().remove(schedule);
		schedule.setMentor(null);

		return schedule;
	}

}
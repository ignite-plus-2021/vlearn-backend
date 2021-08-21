package com.target.vlearnv1.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;
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
	@Column(name="mentor_id", unique=true, nullable=false)
	private Integer mentorId;

	@Column(name="mentor_name", length=2147483647)
	private String mentorName;

	//bi-directional many-to-one association to Schedule
	@OneToMany(mappedBy="mentor")
	//@JsonManagedReference
	private List<Schedule> schedules;

	public Mentor() {
	}

	public Integer getMentorId(Integer mentorid) {
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
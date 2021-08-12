package com.target.vlearnv1.entity;

import com.fasterxml.jackson.annotation.*;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


/**
 * The persistent class for the mentee database table.
 * 
 */
@Entity
@NamedQuery(name="Mentee.findAll", query="SELECT m FROM Mentee m")
public class Mentee implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="mentee_id", unique=true, nullable=false)
	private Integer menteeId;

	@Column(name="mentee_name", length=2147483647)
	private String menteeName;

	//bi-directional many-to-one association to Schedule

	@OneToMany(mappedBy="mentee")
	private List<Schedule> schedules;

	public Mentee() {
	}

	public Integer getMenteeId() {
		return this.menteeId;
	}

	public void setMenteeId(Integer menteeId) {
		this.menteeId = menteeId;
	}

	public String getMenteeName() {
		return this.menteeName;
	}

	public void setMenteeName(String menteeName) {
		this.menteeName = menteeName;
	}

	public List<Schedule> getSchedules() {
		return  this.schedules;
	}

	public void setSchedules(List<Schedule> schedules) {
		this.schedules =  schedules;
	}

	public Schedule addSchedule(Schedule schedule) {
		getSchedules().add(schedule);
		schedule.setMentee(this);

		return schedule;
	}

	public Schedule removeSchedule(Schedule schedule) {
		getSchedules().remove(schedule);
		schedule.setMentee(null);

		return schedule;
	}

}
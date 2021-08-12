package com.target.vlearnv1.entity;

import com.fasterxml.jackson.annotation.*;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name="schedule")
@NamedQuery(name="Schedule.findAll", query="SELECT s FROM Schedule s")
public class Schedule implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="schedule_id", unique=true, nullable=false)
	private Integer scheduleId;

	@Temporal(TemporalType.DATE)
	@Column(name="end_date")
	private Date endDate;

	@Column(name="mentor_verification")
	private Boolean mentorVerification;

	@Temporal(TemporalType.DATE)
	@Column(name="start_date")
	private Date startDate;

	//bi-directional many-to-one association to SchCompletion
	@OneToMany(mappedBy="schedule")
	@JsonManagedReference
	private List<SchCompletion> schCompletions;

	//bi-directional many-to-one association to Course
	//@JsonIgnore
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="course_id", nullable=false)
	//@JsonBackReference
	private Course course;

	//bi-directional many-to-one association to Mentee
	//@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "mentee_id", nullable = false)
	private Mentee mentee;

	//bi-directional many-to-one association to Mentor
	//@JsonIgnore
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="mentor_id", nullable=false)
	//@JsonBackReference
	private Mentor mentor;

	public Schedule() {
	}

	public Integer getScheduleId() {
		return this.scheduleId;
	}

	public void setScheduleId(Integer scheduleId) {
		this.scheduleId = scheduleId;
	}

	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public Boolean getMentorVerification() {
		return this.mentorVerification;
	}

	public void setMentorVerification(Boolean mentorVerification) {
		this.mentorVerification = mentorVerification;
	}

	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public List<SchCompletion> getSchCompletions() {
		return this.schCompletions;
	}

	public void setSchCompletions(List<SchCompletion> schCompletions) {
		this.schCompletions = schCompletions;
	}



	public SchCompletion addSchCompletion(SchCompletion schCompletion) {
		getSchCompletions().add(schCompletion);
		schCompletion.setSchedule(this);

		return schCompletion;
	}

	public SchCompletion removeSchCompletion(SchCompletion schCompletion) {
		getSchCompletions().remove(schCompletion);
		schCompletion.setSchedule(null);

		return schCompletion;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Mentee getMentee() {
		return this.mentee;
	}

	public void setMentee(Mentee mentee) {
		this.mentee = mentee;
	}

	public Mentor getMentor() {
		return this.mentor;
	}

	public void setMentor(Mentor mentor) {
		this.mentor = mentor;
	}

}
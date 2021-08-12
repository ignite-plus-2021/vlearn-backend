package com.ignite.vlearntarget.Entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the schedule database table.
 * 
 */
@Entity
@NamedQuery(name="Schedule.findAll", query="SELECT s FROM Schedule s")
public class Schedule implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="schedule_id")
	private Integer scheduleId;

	@Temporal(TemporalType.DATE)
	@Column(name="end_date")
	private Date endDate;

	@Column(name="mentor_id")
	private Integer mentorId;

	@Column(name="mentor_verification")
	private Boolean mentorVerification;

	@Temporal(TemporalType.DATE)
	@Column(name="start_date")
	private Date startDate;

	//bi-directional many-to-one association to SchCompletion
	@OneToMany(mappedBy="schedule")
	private List<SchCompletion> schCompletions;

	//bi-directional many-to-one association to Course
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="course_id")
	private Course course;

	public Schedule(Boolean mentorVerification) {
		this.mentorVerification = mentorVerification;
	}

	public Schedule(Course course) {
		this.course = course;
	}

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public Schedule(Mentor mentor) {
		this.mentor = mentor;
	}

	public Schedule(Mentee mentee) {
		this.mentee = mentee;
	}

	//bi-directional many-to-one association to Mentee
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="mentee_id")
	private Mentee mentee;

	public Schedule(List<SchCompletion> schCompletions) {
		this.schCompletions = schCompletions;
	}

	public Schedule(Integer scheduleId) {
		this.scheduleId = scheduleId;
	}

	public Schedule(Date endDate) {
		this.endDate = endDate;
	}

	//bi-directional many-to-one association to Mentor
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="mentee_id")
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

	public Integer getMentorId() {
		return this.mentorId;
	}

	public void setMentorId(Integer mentorId) {
		this.mentorId = mentorId;
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
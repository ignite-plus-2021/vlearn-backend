package com.target.vlearnv1.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;


@Entity
@NamedQuery(name="Course.findAll", query="SELECT c FROM Course c")

public class Course implements Serializable {
	//private static final long serialVersionUID = 1L;
	@Id
	@Column(name="course_id", unique=true, nullable=false)
	private Integer courseId;

	@Column(name="course_name", length=2147483647)
	private String courseName;

	//bi-directional many-to-one association to Module
	@OneToMany(mappedBy="course", cascade={CascadeType.ALL})
	//@JsonManagedReference
	private List<Module> modules;

	//bi-directional many-to-one association to Schedule
	@OneToMany(mappedBy="course")
	//@JsonManagedReference
	private List<Schedule> schedules;

	public Course() {
	}

	public Integer getCourseId() {
		return this.courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return this.courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public List<Module> getModules() {
		return this.modules;
	}

	public void setModules(List<Module> modules) {
		this.modules = modules;
	}


	public Module addModule(Module module) {
		getModules().add(module);
		module.setCourse(this);
		return module;
	}

	public Module removeModule(Module module) {
		getModules().remove(module);
		module.setCourse(null);
		return module;
	}

	public List<Schedule> getSchedules() {
		return this.schedules;
	}

	public void setSchedules(List<Schedule> schedules) {
		this.schedules = schedules;
	}


	public Schedule addSchedule(Schedule schedule) {
		getSchedules().add(schedule);
		schedule.setCourse(this);
		return schedule;
	}

	public Schedule removeSchedule(Schedule schedule) {
		getSchedules().remove(schedule);
		schedule.setCourse(null);
		return schedule;
	}


}
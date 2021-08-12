package com.target.vlearnv1.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;


@Entity
@Table(name="sch_completion")
@NamedQuery(name="SchCompletion.findAll", query="SELECT s FROM SchCompletion s")
public class SchCompletion implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="schcompletion_id", unique=true, nullable=false)
	private Integer schcompletionId;

	private Integer completed;

	@Column(name="is_completed")
	private Boolean isCompleted;


	//bi-directional many-to-one association to Schedule
	//@JsonIgnore
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="schedule_id", nullable=false)
	//@JsonBackReference
	private Schedule schedule;

	//bi-directional many-to-one association to TeachingMaterial
	//@JsonIgnore
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="teaching_material_id", nullable=false)
	//@JsonBackReference
	private TeachingMaterial teachingMaterial;

	public SchCompletion() {
	}

	public Integer getSchcompletionId() {
		return this.schcompletionId;
	}

	public void setSchcompletionId(Integer schcompletionId) {
		this.schcompletionId = schcompletionId;
	}

	public Integer getCompleted() {
		return this.completed;
	}

	public void setCompleted(Integer completed) {
		this.completed = completed;
	}

	public Boolean getIsCompleted() {
		return this.isCompleted;
	}

	public void setIsCompleted(Boolean isCompleted) {
		this.isCompleted = isCompleted;
	}

	public Schedule getSchedule() {
		return this.schedule;
	}

	public void setSchedule(Schedule schedule) {
		this.schedule = schedule;
	}

	public TeachingMaterial getTeachingMaterial() {
		return this.teachingMaterial;
	}

	public void setTeachingMaterial(TeachingMaterial teachingMaterial) {
		this.teachingMaterial = teachingMaterial;
	}

}
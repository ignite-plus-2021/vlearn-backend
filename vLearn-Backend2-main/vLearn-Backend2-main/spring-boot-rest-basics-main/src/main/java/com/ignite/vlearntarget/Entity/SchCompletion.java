package com.ignite.vlearntarget.Entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the sch_completion database table.
 * 
 */
@Entity
@Table(name="sch_completion")
@NamedQuery(name="SchCompletion.findAll", query="SELECT s FROM SchCompletion s")
public class SchCompletion implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="schcompletion_id")
	private Integer schcompletionId;

	private Integer completed;

	public SchCompletion(Integer schcompletionId) {
		this.schcompletionId = schcompletionId;
	}

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	@Column(name="is_completed")
	private Boolean isCompleted;

	public SchCompletion(TeachingMaterial teachingMaterial) {
		this.teachingMaterial = teachingMaterial;
	}

	public SchCompletion(Schedule schedule) {
		this.schedule = schedule;
	}

	public SchCompletion(Boolean isCompleted) {
		this.isCompleted = isCompleted;
	}

	//bi-directional many-to-one association to Schedule
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="schedule_id")
	private Schedule schedule;

	//bi-directional many-to-one association to TeachingMaterial
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="teaching_material_id")
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
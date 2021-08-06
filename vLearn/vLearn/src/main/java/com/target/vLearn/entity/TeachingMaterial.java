package com.target.vLearn.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the teaching_material database table.
 * 
 */
@Entity
@Table(name="teaching_material")
@NamedQuery(name="TeachingMaterial.findAll", query="SELECT t FROM TeachingMaterial t")
public class TeachingMaterial implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="teaching_material_id")
	private Integer teachingMaterialId;

	private Integer duration;

	@Column(name="video_url")
	private String videoUrl;

	//bi-directional many-to-one association to SchCompletion
	@OneToMany(mappedBy="teachingMaterial")
	private List<SchCompletion> schCompletions;

	//bi-directional many-to-one association to Module
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="module_id")
	private Module module;

	public TeachingMaterial() {
	}

	public Integer getTeachingMaterialId() {
		return this.teachingMaterialId;
	}

	public void setTeachingMaterialId(Integer teachingMaterialId) {
		this.teachingMaterialId = teachingMaterialId;
	}

	public Integer getDuration() {
		return this.duration;
	}

	public void setDuration(Integer duration) {
		this.duration = duration;
	}

	public String getVideoUrl() {
		return this.videoUrl;
	}

	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}

	public List<SchCompletion> getSchCompletions() {
		return this.schCompletions;
	}

	public void setSchCompletions(List<SchCompletion> schCompletions) {
		this.schCompletions = schCompletions;
	}

	public SchCompletion addSchCompletion(SchCompletion schCompletion) {
		getSchCompletions().add(schCompletion);
		schCompletion.setTeachingMaterial(this);

		return schCompletion;
	}

	public SchCompletion removeSchCompletion(SchCompletion schCompletion) {
		getSchCompletions().remove(schCompletion);
		schCompletion.setTeachingMaterial(null);

		return schCompletion;
	}

	public Module getModule() {
		return this.module;
	}

	public void setModule(Module module) {
		this.module = module;
	}

}
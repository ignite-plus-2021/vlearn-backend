package com.target.vlearnv1.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;



@Entity
@Table(name="teaching_material")
@NamedQuery(name="TeachingMaterial.findAll", query="SELECT t FROM TeachingMaterial t")
public class TeachingMaterial implements Serializable {
	private static final long serialVersionUID = 1L;


	@Id
	@Column(name="teaching_material_id", unique=true, nullable=false)
	private Integer teachingMaterialId;

	private Integer duration;

	public TeachingMaterial(Integer teachingMaterialId) {
		this.teachingMaterialId = teachingMaterialId;
	}

	public TeachingMaterial(String videoUrl) {
		this.videoUrl = videoUrl;
	}

	@Column(name="video_url", length=2147483647)
	private String videoUrl;

	//bi-directional many-to-one association to SchCompletion
	@OneToMany(mappedBy="teachingMaterial")
	//@JsonManagedReference
	private List<SchCompletion> schCompletions;

	//bi-directional many-to-one association to Module
	//@JsonIgnore
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="module_id", nullable=false)
	//@JsonBackReference
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
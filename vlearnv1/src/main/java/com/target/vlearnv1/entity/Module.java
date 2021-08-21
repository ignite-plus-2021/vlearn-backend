package com.target.vlearnv1.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;


/**
 * The persistent class for the module database table.
 * 
 */
@Entity
@NamedQuery(name="Module.findAll", query="SELECT m FROM Module m")
public class Module implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="module_id", unique=true, nullable=false)
	private Integer moduleId;

	@Column(name="module_name", length=2147483647)
	private String moduleName;

	//bi-directional many-to-one association to Course
	//@JsonIgnore
	@ManyToOne(cascade={CascadeType.ALL}, fetch=FetchType.LAZY)
	@JoinColumn(name="course_id", nullable=false)
	//@JsonBackReference
	private Course course;

	//bi-directional many-to-one association to TeachingMaterial
	@OneToMany(mappedBy="module")
	//@JsonManagedReference
	private List<TeachingMaterial> teachingMaterials;

	public Module() {
	}

	public Integer getModuleId() {
		return this.moduleId;
	}

	public void setModuleId(Integer moduleId) {
		this.moduleId = moduleId;
	}

	public String getModuleName() {
		return this.moduleName;
	}

	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public List<TeachingMaterial> getTeachingMaterials() {
		return this.teachingMaterials;
	}

	public void setTeachingMaterials(List<TeachingMaterial> teachingMaterials) {
		this.teachingMaterials = teachingMaterials;
	}

	public TeachingMaterial addTeachingMaterial(TeachingMaterial teachingMaterial) {
		getTeachingMaterials().add(teachingMaterial);
		teachingMaterial.setModule(this);
		return teachingMaterial;
	}

	public TeachingMaterial removeTeachingMaterial(TeachingMaterial teachingMaterial) {
		getTeachingMaterials().remove(teachingMaterial);
		teachingMaterial.setModule(null);
		return teachingMaterial;
	}

}
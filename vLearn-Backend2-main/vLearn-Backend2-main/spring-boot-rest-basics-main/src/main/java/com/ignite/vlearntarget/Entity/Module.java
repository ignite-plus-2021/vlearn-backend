package com.ignite.vlearntarget.Entity;

import java.io.Serializable;
import javax.persistence.*;
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
	@Column(name="module_id")
	private Integer moduleId;

	@Column(name="module_name")
	private String moduleName;

	//bi-directional many-to-one association to Course
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="course_id")
	private Course course;

	//bi-directional many-to-one association to TeachingMaterial
	@OneToMany(mappedBy="module")
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

	public Module(List<TeachingMaterial> teachingMaterials) {
		this.teachingMaterials = teachingMaterials;
	}

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public Module(Course course) {
		this.course = course;
	}

	public Module(Integer moduleId) {
		this.moduleId = moduleId;
	}

	public Module(String moduleName) {
		this.moduleName = moduleName;
	}

	public TeachingMaterial addTeachingMaterial(TeachingMaterial teachingMaterial) {
		getTeachingMaterials().add(teachingMaterial);
		//teachingMaterial.setModule(this);

		return teachingMaterial;
	}

	public TeachingMaterial removeTeachingMaterial(TeachingMaterial teachingMaterial) {
		getTeachingMaterials().remove(teachingMaterial);
		teachingMaterial.setModule(null);

		return teachingMaterial;
	}

}
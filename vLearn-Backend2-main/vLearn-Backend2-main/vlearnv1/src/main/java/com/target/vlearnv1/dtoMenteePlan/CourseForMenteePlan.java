package com.target.vlearnv1.dtoMenteePlan;

import java.util.Date;
import java.util.List;

public class CourseForMenteePlan {
    Integer courseId;
    String courseName;
    Date startDate;
    Date endDate;
    List<ModuleForMenteePlan> modules;

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public List<ModuleForMenteePlan> getModules() {
        return modules;
    }

    public void setModules(List<ModuleForMenteePlan> modules) {
        this.modules = modules;
    }


}

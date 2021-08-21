package com.target.vlearnv1.dto;

import java.util.List;

public class CourseResponse {
    Integer courseId;
    String courseName;
    List<ScheduleResponse>sc_List;

    public List<ScheduleResponse> getSc_List() {
        return sc_List;
    }

    public void setSc_List(List<ScheduleResponse> sc_List) {
        this.sc_List = sc_List;
    }


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
}

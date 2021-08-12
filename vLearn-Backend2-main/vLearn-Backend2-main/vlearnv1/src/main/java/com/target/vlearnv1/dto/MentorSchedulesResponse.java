package com.target.vlearnv1.dto;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class MentorSchedulesResponse {

    Integer menteeId;
    String menteeName;
    List<CourseResponse> courseList;


    public List<CourseResponse> getCourseList() {
        return courseList;
    }

    public void setCourseList(List<CourseResponse> courseList) {
        this.courseList = courseList;
    }



    public String getMenteeName() {
        return menteeName;
    }

    public void setMenteeName(String menteeName) {
        this.menteeName = menteeName;
    }

    public Integer getMenteeId() {
        return menteeId;
    }


    public void setMenteeId(Integer menteeId) {
        this.menteeId = menteeId;
    }


}

package com.target.vlearnv1.dtoMenteePlan;

import com.target.vlearnv1.dtoForMenteeProfile.CourseForMenteeResponse;

import java.util.List;

public class MenteePlan {
    Integer menteeId;
    String  menteeName;

    public List<CourseForMenteeResponse> getCourseList() {
        return courseList;
    }

    public void setCourseList(List<CourseForMenteeResponse> courseList) {
        this.courseList = courseList;
    }

    List<CourseForMenteeResponse> courseList;

    public Integer getMenteeId() {
        return menteeId;
    }

    public void setMenteeId(Integer menteeId) {
        this.menteeId = menteeId;
    }

    public String getMenteeName() {
        return menteeName;
    }

    public void setMenteeName(String menteeName) {
        this.menteeName = menteeName;
    }
}

package com.target.vlearnv1.dtoMenteePlan;

import com.target.vlearnv1.dtoForMenteeProfile.CourseForMenteeResponse;

import java.util.List;

public class MenteePlan {
    Integer menteeId;
    String  menteeName;
    List<CourseForMenteePlan> courseList;

    public List<CourseForMenteePlan> getCourseList() {
        return courseList;
    }

    public void setCourseList(List<CourseForMenteePlan> courseList) {
        this.courseList = courseList;
    }

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

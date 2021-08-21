package com.target.vlearnv1.dto;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Objects;

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof MentorSchedulesResponse)) return false;
        MentorSchedulesResponse that = (MentorSchedulesResponse) o;
        return getMenteeId().equals(that.getMenteeId()) && getMenteeName().equals(that.getMenteeName());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getMenteeId(), getMenteeName());
    }
}

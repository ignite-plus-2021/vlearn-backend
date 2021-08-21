package com.target.vlearnv1.dtoForMenteeProfile;

import java.util.List;
import java.util.Objects;

public class MenteeForMenteeProfile {
    Integer menteeId;
    String menteeName;

    public List<CourseForMenteeResponse> getCourseList() {
        return courseList;
    }

    public void setCourseList(List<CourseForMenteeResponse> courseList) {
        this.courseList = courseList;
    }

    List<CourseForMenteeResponse> courseList;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        MenteeForMenteeProfile that = (MenteeForMenteeProfile) o;
        return menteeId.equals(that.menteeId) && menteeName.equals(that.menteeName) && Objects.equals(courseList, that.courseList);
    }

    @Override
    public int hashCode() {
        return Objects.hash(menteeId, menteeName, courseList);
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

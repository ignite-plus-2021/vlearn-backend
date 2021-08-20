package com.target.vlearnv1.util;

import com.target.vlearnv1.dtoForMenteeProfile.CourseForMenteeResponse;
import com.target.vlearnv1.dtoForMenteeProfile.MenteeForMenteeProfile;
import com.target.vlearnv1.entity.Schedule;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class MenteeProfileResponse {

    public static Set<MenteeForMenteeProfile> generateResponse(List<Schedule> schedules, int menteeid) {
        Set<MenteeForMenteeProfile> msrList = new HashSet<>();

            MenteeForMenteeProfile msr = new MenteeForMenteeProfile();
            msr.setMenteeId(menteeid);
            msr.setMenteeName(schedules.get(0).getMentee().getMenteeName());

            List<CourseForMenteeResponse> courseList = generateCourseForMentee(schedules,menteeid);
            msr.setCourseList(courseList);


            msrList.add(msr);
        return msrList;
    }

    public static List<CourseForMenteeResponse> generateCourseForMentee(List<Schedule> scList, Integer mentee_id) {
        List<CourseForMenteeResponse> courseList = new ArrayList<>();
        for (Schedule s : scList) {
                CourseForMenteeResponse course = new CourseForMenteeResponse();
                course.setCourseId(s.getCourse().getCourseId());
                course.setCoursename(s.getCourse().getCourseName());
                course.setEnd_date(s.getEndDate());
                course.setStart_date(s.getStartDate());
                courseList.add(course);
        }
        return courseList;
    }
}

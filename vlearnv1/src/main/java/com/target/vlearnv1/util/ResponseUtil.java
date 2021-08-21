package com.target.vlearnv1.util;

import com.target.vlearnv1.dto.CourseResponse;
import com.target.vlearnv1.dto.MentorSchedulesResponse;
import com.target.vlearnv1.dto.SchCompResponse;
import com.target.vlearnv1.dto.ScheduleResponse;
import com.target.vlearnv1.entity.Course;
import com.target.vlearnv1.entity.SchCompletion;
import com.target.vlearnv1.entity.Schedule;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ResponseUtil {


    public static Set<MentorSchedulesResponse> generateResponse(List<Schedule> scList) {
        Set<MentorSchedulesResponse> msrList = new HashSet<>();

        for (Schedule sc : scList) {
            MentorSchedulesResponse msr = new MentorSchedulesResponse();

            msr.setMenteeId(sc.getMentee().getMenteeId());
            msr.setMenteeName(sc.getMentee().getMenteeName());

            List<CourseResponse> courseList=new ArrayList<>();
            courseList=generateCourseForMentee(scList,msr.getMenteeId());
            msr.setCourseList(courseList);


            msrList.add(msr);
        }
        return msrList;
    }
    public static List<CourseResponse> generateCourseForMentee(List<Schedule> scList,Integer mentee_id)
    {
        List<CourseResponse>course=new ArrayList<>();
        for(Schedule s:scList)
        {
            if(s.getMentee().getMenteeId()==mentee_id)
            {
                CourseResponse course_obj=new CourseResponse();
                course_obj.setCourseId(s.getCourse().getCourseId());
                course_obj.setCourseName(s.getCourse().getCourseName());

                List<ScheduleResponse>sch=generateScheduleForCourse(scList, course_obj.getCourseId());
                course_obj.setSc_List(sch);
                course.add(course_obj);
            }
        }
        return course;
    }
    public static List<ScheduleResponse> generateScheduleForCourse(List<Schedule> scList, Integer course_id)
    {
        List<ScheduleResponse> schedule=new ArrayList<>();
        for(Schedule s:scList)
        {
            if(s.getCourse().getCourseId()==course_id)
            {
                ScheduleResponse obj=new ScheduleResponse();
                obj.setSchedule_id(s.getScheduleId());
                obj.setMentor_verification(s.getMentorVerification());
                obj.setStart_date(s.getStartDate());
                obj.setEnd_date(s.getEndDate());

                List<SchCompResponse> schCompResponseList=generateSchCompForSchedule(scList,s.getScheduleId());
                obj.setScListComp(schCompResponseList);
                schedule.add(obj);
            }
        }
        return schedule;
    }
    public static List<SchCompResponse> generateSchCompForSchedule(List<Schedule> scList,Integer schedule_id)
    {
        List<SchCompResponse> schCompList=new ArrayList<>();
        for(Schedule s:scList)
        {
            List<SchCompletion> schCompletionList=s.getSchCompletions();
            for(SchCompletion sch:schCompletionList)
            {
                if(sch.getSchedule().getScheduleId()==schedule_id) {
                    SchCompResponse schComp = new SchCompResponse();
                    schComp.setCompleted(sch.getCompleted());
                    schComp.setDuration(sch.getTeachingMaterial().getDuration());
                    schCompList.add(schComp);
                }
            }
        }
        return schCompList;
    }
}

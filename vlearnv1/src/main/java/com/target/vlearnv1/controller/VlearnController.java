package com.target.vlearnv1.controller;

import com.target.vlearnv1.dtoForMenteeProfile.MenteeForMenteeProfile;
import com.target.vlearnv1.dto.MentorSchedulesResponse;
import com.target.vlearnv1.dtoMenteePlan.MenteePlan;
import com.target.vlearnv1.entity.Schedule;
import com.target.vlearnv1.service.ServiceSchedule;
import com.target.vlearnv1.util.MenteePlanUtil;
import com.target.vlearnv1.util.MenteeProfileResponse;
import com.target.vlearnv1.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Set;


@RestController
public class VlearnController {

    @Autowired
    private ServiceSchedule serviceSchedule;

   @GetMapping(value = "/mentors/mymentee/{mentorid}")
    public Set<MentorSchedulesResponse> getMyMentee(@PathVariable Integer mentorid){
        List<Schedule> schedules=serviceSchedule.getMenteeScheduleByMentor(mentorid);
       return ResponseUtil.generateResponse(schedules);
    }
    @GetMapping(value = "/mentee/schedule/{menteeid}")
    public Set<MenteeForMenteeProfile> getMySchedule(@PathVariable Integer menteeid){
        List<Schedule> schedules=serviceSchedule.getScheduleByMentee(menteeid);
        return MenteeProfileResponse.generateResponse(schedules,menteeid);
    }
    @GetMapping(value="/mentee/plan/{menteeid}")
    public Set<MenteePlan> getMenteeCourse(@PathVariable Integer menteeid){
       List<Schedule> schedules=serviceSchedule.getScheduleByMentee(menteeid);
        return MenteePlanUtil.generateResponse(schedules,menteeid);
    }
}

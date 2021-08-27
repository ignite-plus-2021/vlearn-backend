package com.target.vlearnv1.controller;

import com.target.vlearnv1.dtoForLogin.LoginMentee;
import com.target.vlearnv1.dtoForMenteeProfile.MenteeForMenteeProfile;
import com.target.vlearnv1.dto.MentorSchedulesResponse;
import com.target.vlearnv1.dtoMenteePlan.MenteePlan;
import com.target.vlearnv1.entity.Mentee;
import com.target.vlearnv1.entity.Schedule;
import com.target.vlearnv1.service.ServiceSchedule;
import com.target.vlearnv1.util.LoginResponseUtil;
import com.target.vlearnv1.util.MenteePlanUtil;
import com.target.vlearnv1.util.MenteeProfileResponse;
import com.target.vlearnv1.util.ResponseUtil;
//import com.target.vlearnv1.util.UpdateCompletionStatusUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Set;


@RestController
public class VlearnController {

    @Autowired
    private ServiceSchedule serviceSchedule;

    @CrossOrigin(origins = "http://localhost:4200/")
    @GetMapping(value = "/mentors/mymentee/{mentorid}")
    public Set<MentorSchedulesResponse> getMyMentee(@PathVariable Integer mentorid){
        List<Schedule> schedules=serviceSchedule.getMenteeScheduleByMentor(mentorid);
       return ResponseUtil.generateResponse(schedules);
    }

    @CrossOrigin(origins = "http://localhost:4200/")
    @GetMapping(value = "/mentee/schedule/{menteeid}")
    public Set<MenteeForMenteeProfile> getMySchedule(@PathVariable Integer menteeid){
        List<Schedule> schedules=serviceSchedule.getScheduleByMentee(menteeid);
        return MenteeProfileResponse.generateResponse(schedules,menteeid);
    }

    @CrossOrigin(origins = "http://localhost:4200/")
    @GetMapping(value="/mentee/plan/{menteeid}")
    public Set<MenteePlan> getMenteeCourse(@PathVariable Integer menteeid){
        List<Schedule> schedules=serviceSchedule.getScheduleByMentee(menteeid);
        return MenteePlanUtil.generateResponse(schedules,menteeid);
    }

    @CrossOrigin(origins = "http://localhost:4200/")
    @PutMapping(value="/mentee/video/{menteeid}/{courseid}/{moduleid}")
    public void putVideoComplete(@PathVariable Integer menteeid,@PathVariable Integer courseid,@PathVariable Integer moduleid){
        List<Schedule> schedules=serviceSchedule.getScheduleByMentee(menteeid);
        serviceSchedule.updatecompletion(courseid,moduleid,schedules);
    }
    //@CrossOrigin(origins="")
    @GetMapping(value="/login")
    public List<LoginMentee> getMenteesMentors()
    {
        List<Mentee> menteeList=serviceSchedule.allMentee();
        return LoginResponseUtil.generateResponse(menteeList);
    }
}

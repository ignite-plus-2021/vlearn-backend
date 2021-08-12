package com.target.vlearnv1.controller;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.target.vlearnv1.dto.MentorSchedulesResponse;
import com.target.vlearnv1.entity.Mentor;
import com.target.vlearnv1.entity.Schedule;
import com.target.vlearnv1.service.ServiceSchedule;
import com.target.vlearnv1.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
public class VlearnController {

    @Autowired
    private ServiceSchedule serviceSchedule;


    @GetMapping(value = "hello")
    public String hello(){
        return "HELLO";
    }

   @GetMapping(value = "/mentors/mentee/{mentorid}")
    public List<MentorSchedulesResponse> getMyMentee(@PathVariable Integer mentorid){
        List<Schedule> schedules=serviceSchedule.getMentee(mentorid);
       return ResponseUtil.generateResponse(schedules);

    }


}

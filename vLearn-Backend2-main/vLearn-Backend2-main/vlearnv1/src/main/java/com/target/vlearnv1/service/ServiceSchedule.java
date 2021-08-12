package com.target.vlearnv1.service;


import com.fasterxml.jackson.annotation.JsonIgnore;
import com.target.vlearnv1.entity.Mentee;
import com.target.vlearnv1.entity.Mentor;
import com.target.vlearnv1.entity.Schedule;
import com.target.vlearnv1.repository.RepositorySchedule;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class ServiceSchedule {

@Autowired
private RepositorySchedule repositorySchedule;

    public ServiceSchedule(RepositorySchedule repositorySchedule) {
        this.repositorySchedule = repositorySchedule;
    }

    public List<Schedule> getMentee(Integer mentorid){
        Mentor mentor = new Mentor();
        mentor.setMentorId(mentorid);
        return repositorySchedule.findByMentor(mentor);
    }

}

package com.target.vlearnv1.service;


import com.target.vlearnv1.entity.Mentee;
import com.target.vlearnv1.entity.Mentor;
import com.target.vlearnv1.entity.SchCompletion;
import com.target.vlearnv1.entity.Schedule;
import com.target.vlearnv1.repository.FindAllMentees;
import com.target.vlearnv1.repository.RepoMenteeProfilePage;
import com.target.vlearnv1.repository.RepositorySchedule;
import com.target.vlearnv1.repository.UpdateProgress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServiceSchedule {

@Autowired
private RepositorySchedule repositorySchedule;
@Autowired
private RepoMenteeProfilePage repoMentee;
@Autowired
private UpdateProgress updateProgress;
@Autowired
private FindAllMentees emailId;

    public ServiceSchedule(RepositorySchedule repositorySchedule) {
        this.repositorySchedule = repositorySchedule;
    }

    public List<Schedule> getMenteeScheduleByMentor(Integer mentorid){
        Mentor mentor = new Mentor();
        mentor.setMentorId(mentorid);
        List<Schedule> scList=repositorySchedule.findByMentor(mentor);
        return scList;
    }
    public List<Schedule> getScheduleByMentee(Integer menteeid){
        Mentee mentee = new Mentee();
        mentee.setMenteeId(menteeid);
        List<Schedule> scList= repoMentee.findByMentee(mentee);
        return scList;
    }

    public void updatecompletion(Integer courseid, Integer moduleid, List<Schedule> schedules){
        for(Schedule s: schedules){
            if(s.getCourse().getCourseId()==courseid){
                for(SchCompletion sch: s.getSchCompletions()){
                    if(sch.getTeachingMaterial().getTeachingMaterialId()==moduleid){
                        sch.setIsCompleted(true);
                        sch.setCompleted(sch.getTeachingMaterial().getDuration());
                        updateProgress.save(sch);
                    }
                }
            }
        }
    }

    public  List<Mentee> allMentee()
    {
        return emailId.findAll();
    }
}

package com.ignite.vlearntarget.Service;

import com.ignite.vlearntarget.Entity.Schedule;
import com.ignite.vlearntarget.Repository.RepositorySchedule;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServiceSchedule {

    @Autowired
    private final RepositorySchedule repositorySchedule;

    public ServiceSchedule(RepositorySchedule repositorySchedule) {
        this.repositorySchedule = repositorySchedule;
    }

   // public List<Schedule> getSchedules(){
        //return schedules;
    //    List<Schedule> schedules=new ArrayList<>();
    //    repositorySchedule.findAll().forEach(schedules::add);
    //    return schedules;
    //}

    public Schedule getMyMentee(Integer mentor_id){
        //return schedules.stream().filter(t -> t.getMentor().equals(mentorid)).findFirst().get();
        return repositorySchedule.findByID(mentor_id);
    }
}

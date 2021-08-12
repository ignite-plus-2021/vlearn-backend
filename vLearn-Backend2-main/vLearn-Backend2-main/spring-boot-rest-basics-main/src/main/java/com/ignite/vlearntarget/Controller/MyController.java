package com.ignite.vlearntarget.Controller;

import com.ignite.vlearntarget.Entity.Mentor;
import com.ignite.vlearntarget.Entity.Schedule;
import com.ignite.vlearntarget.Service.ServiceMentor;
import com.ignite.vlearntarget.Service.ServiceSchedule;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

@RestController
public class MyController {

    @Autowired
    private final ServiceMentor serviceMentor;

   @Autowired
    private final ServiceSchedule serviceSchedule;

    public MyController(ServiceMentor serviceMentor, ServiceSchedule serviceSchedule) {
        this.serviceMentor = serviceMentor;
        this.serviceSchedule = serviceSchedule;
    }

    @GetMapping("/mentor/{mentorid}/schedule")
    public List<Mentor> getMentor(@PathVariable Integer mentorid){
        return serviceMentor.getMentor (mentorid);
    }

   @GetMapping("/mentor/{mentor_id}")
   public Schedule getMyMentee(@PathVariable Integer mentor_id){
     return serviceSchedule.getMyMentee(mentor_id);
   }

}

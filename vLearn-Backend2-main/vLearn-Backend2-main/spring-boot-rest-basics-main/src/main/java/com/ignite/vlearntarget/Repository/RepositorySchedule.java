package com.ignite.vlearntarget.Repository;
import com.ignite.vlearntarget.Entity.Schedule;
import org.springframework.data.repository.CrudRepository;

public interface RepositorySchedule extends CrudRepository<Schedule,Integer> {
    //Schedule findAllById(Integer mentor_id);

    Schedule findByID(Integer mentor_id);

    //get schedule given mentorid
}

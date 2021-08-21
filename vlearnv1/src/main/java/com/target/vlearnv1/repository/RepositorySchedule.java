package com.target.vlearnv1.repository;
import com.target.vlearnv1.entity.Mentee;
import com.target.vlearnv1.entity.Mentor;
import com.target.vlearnv1.entity.Schedule;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.Collection;
import java.util.List;

@Repository
public interface RepositorySchedule extends JpaRepository<Schedule,Integer> {

    //get schedule given mentorid
@Query(value = "SELECT * FROM mentee m INNER JOIN schedule s ON s.mentee_id=m.mentee_id WHERE s.mentor_id=:mentor",nativeQuery = true)

   // @Query(value = "SELECT * FROM schedule s WHERE s.mentor_id=:mentor",nativeQuery = true)

List<Schedule> findByMentor(@Param("mentor") Mentor mentor);

}

package com.target.vlearnv1.repository;

import com.target.vlearnv1.entity.Mentee;
import com.target.vlearnv1.entity.Schedule;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface RepoMenteeProfilePage extends JpaRepository<Schedule, Integer> {
    @Query(value = "SELECT * FROM course c INNER JOIN schedule s ON s.course_id=c.course_id WHERE s.mentee_id=:mentee",nativeQuery = true)
    List<Schedule> findByMentee(@Param("mentee") Mentee mentee);
}

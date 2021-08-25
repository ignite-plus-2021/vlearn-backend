package com.target.vlearnv1.repository;

import com.target.vlearnv1.entity.SchCompletion;
import com.target.vlearnv1.entity.Schedule;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UpdateProgress extends CrudRepository<SchCompletion,Integer> {

}

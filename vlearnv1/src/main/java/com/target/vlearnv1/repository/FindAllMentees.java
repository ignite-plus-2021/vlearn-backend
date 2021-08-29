package com.target.vlearnv1.repository;

import com.target.vlearnv1.entity.Mentee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FindAllMentees extends JpaRepository<Mentee,String> {
    List<Mentee> findAll();
}

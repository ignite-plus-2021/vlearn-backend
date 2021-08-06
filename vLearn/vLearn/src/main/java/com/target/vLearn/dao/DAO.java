package com.target.vLearn.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.target.vLearn.entity.Schedule;

public interface DAO extends JpaRepository<Schedule,Integer>{

}

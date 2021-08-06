package com.target.vLearn.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;

import com.target.vLearn.dao.DAO;
import com.target.vLearn.entity.Schedule;

public class Service1 implements ServiceInt{

	private List<Schedule> sch;
	@Autowired
	private DAO obj;
	@Override
	public List<Schedule> get_schedule(Integer mentor_id) {
		// TODO Auto-generated method stub
		List<Schedule> schedules=obj.findAll();
		for(Schedule s:schedules)
		{
			if(s.getMentor().getMentorId()==mentor_id) {
				sch.add(s);
				System.out.println(s.getCourse().getCourseName());
			}
		}
		return sch;
	}}

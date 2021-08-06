package com.target.vLearn.service;

import java.util.List;

import com.target.vLearn.entity.Schedule;

public interface ServiceInt {

	public List<Schedule> get_schedule(Integer mentor_id);
	
}

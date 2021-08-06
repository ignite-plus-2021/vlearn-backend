package com.target.vLearn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import com.target.vLearn.entity.*;
import com.target.vLearn.service.ServiceInt;

import java.util.*;

@RestController
public class Controller1 {
	
@Autowired
private ServiceInt ser;
@GetMapping("/mentorpage/{mentor_id}")
public List<Schedule> mentee_info(@PathVariable Integer mentor_id)
{
	return this.ser.get_schedule(mentor_id);
}
}

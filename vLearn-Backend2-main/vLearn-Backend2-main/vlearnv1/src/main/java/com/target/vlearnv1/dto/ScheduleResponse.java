package com.target.vlearnv1.dto;

import com.target.vlearnv1.entity.SchCompletion;

import javax.persistence.Temporal;
import java.util.Date;
import java.util.List;

public class ScheduleResponse {
    Integer schedule_id;
    Date start_date;
    Date end_date;

    public List<SchCompResponse> getScListComp() {
        return scListComp;
    }

    public void setScListComp(List<SchCompResponse> scListComp) {
        this.scListComp = scListComp;
    }

    List<SchCompResponse>scListComp;

    public Integer getSchedule_id() {
        return schedule_id;
    }

    public void setSchedule_id(Integer schedule_id) {
        this.schedule_id = schedule_id;
    }

    public Date getStart_date() {
        return start_date;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }

    public boolean isMentor_verification() {
        return mentor_verification;
    }

    public void setMentor_verification(boolean mentor_verification) {
        this.mentor_verification = mentor_verification;
    }

    boolean mentor_verification;




}

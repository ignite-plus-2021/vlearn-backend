package com.target.vlearnv1.dto;

import com.target.vlearnv1.entity.SchCompletion;

import java.util.List;

public class SchCompResponse {

     Integer schcompletion_id;
     Integer duration;
    Integer completed;
    Integer tm_id;

    public Integer getSchcompletion_id() {
        return schcompletion_id;
    }

    public void setSchcompletion_id(Integer schcompletion_id) {
        this.schcompletion_id = schcompletion_id;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public Integer getCompleted() {
        return completed;
    }

    public void setCompleted(Integer completed) {
        this.completed = completed;
    }

    public Integer getTm_id() {
        return tm_id;
    }

    public void setTm_id(Integer tm_id) {
        this.tm_id = tm_id;
    }


    }




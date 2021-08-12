package com.ignite.vlearntarget.Service;

import com.ignite.vlearntarget.Entity.Mentor;
import com.ignite.vlearntarget.Repository.RepositoryMentor;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

public class ServiceMentor {

    @Autowired
    private final RepositoryMentor repositoryMentor;

    public ServiceMentor(RepositoryMentor repositoryMentor) {
        this.repositoryMentor = repositoryMentor;
    }

    public List<Mentor> getMentor(Integer mentorid){
        List<Mentor> mentors=new ArrayList<>();
        repositoryMentor.findByMentorId(mentorid).forEach(mentors::add);
        return mentors;
    }

}

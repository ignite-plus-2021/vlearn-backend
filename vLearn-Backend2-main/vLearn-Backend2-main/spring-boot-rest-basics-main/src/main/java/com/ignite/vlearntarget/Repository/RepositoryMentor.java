package com.ignite.vlearntarget.Repository;

import com.ignite.vlearntarget.Entity.Mentor;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface RepositoryMentor extends CrudRepository<Mentor,Integer> {
    List<Mentor> findByMentorId(Integer mentorid);
}

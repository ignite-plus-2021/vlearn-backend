package com.target.vlearnv1.util;

import com.target.vlearnv1.dtoForLogin.LoginMentee;
import com.target.vlearnv1.entity.Mentee;

import java.util.ArrayList;
import java.util.List;

public class LoginResponseUtil {

    public static List<LoginMentee> generateResponse(List<Mentee> ml)
    {
        List<LoginMentee> menteeList=new ArrayList<>();
        for(Mentee m:ml)
        {
            LoginMentee mentee=new LoginMentee();
            mentee.setMenteeId(m.getMenteeId());
            mentee.setMenteeName(m.getMenteeName());
            mentee.setMenteeEmail(m.getMenteeEmail());

            menteeList.add(mentee);
        }
        return menteeList;
    }
}

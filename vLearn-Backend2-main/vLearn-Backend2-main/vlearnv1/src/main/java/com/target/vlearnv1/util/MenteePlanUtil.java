package com.target.vlearnv1.util;

import com.target.vlearnv1.dtoMenteePlan.CourseForMenteePlan;
import com.target.vlearnv1.dtoMenteePlan.MenteePlan;
import com.target.vlearnv1.dtoMenteePlan.ModuleForMenteePlan;
import com.target.vlearnv1.dtoMenteePlan.TeachingMaterialMenteePlan;
import com.target.vlearnv1.entity.Module;
import com.target.vlearnv1.entity.SchCompletion;
import com.target.vlearnv1.entity.Schedule;
import com.target.vlearnv1.entity.TeachingMaterial;
import javafx.scene.effect.SepiaTone;

import java.util.*;

public class MenteePlanUtil {
    public static Set<MenteePlan> generateResponse(List<Schedule> scList, Integer menteeId)
    {
        MenteePlan msL= new MenteePlan();
        Set<MenteePlan> mslSet=new HashSet<>();
        msL.setMenteeId(menteeId);
        msL.setMenteeName(scList.get(0).getMentee().getMenteeName());
        List<CourseForMenteePlan> courseList=new ArrayList<>();
        courseList=getCourseList(scList,menteeId);
        mslSet.add(msL);
        return mslSet;
    }
    public static List<CourseForMenteePlan> getCourseList(List<Schedule>scList,Integer menteeId)
    {
        List<CourseForMenteePlan> courseList=new ArrayList<>();
        for(Schedule s:scList)
        {
            CourseForMenteePlan course=new CourseForMenteePlan();

            course.setCourseId(s.getCourse().getCourseId());
            course.setCourseName(s.getCourse().getCourseName());

            course.setStartDate(s.getStartDate());
            course.setEndDate(s.getEndDate());

            List<ModuleForMenteePlan>modList=new ArrayList<>();
            modList=getModuleList(scList,course.getCourseId());
            course.setModules(modList);

            courseList.add(course);
        }
        return courseList;
    }
    public static List<ModuleForMenteePlan> getModuleList(List<Schedule>scList,Integer courseId)
    {
        List<ModuleForMenteePlan>modList=new ArrayList<>();
        for(Schedule s:scList)
        {
            if(s.getCourse().getCourseId()==courseId)
            {
                for(Module mod:s.getCourse().getModules())
                {
                    ModuleForMenteePlan module=new ModuleForMenteePlan();

                    module.setModuleId(mod.getModuleId());
                    module.setModuleName(mod.getModuleName());

                    List<Integer> time=new ArrayList<>();
                    time=getTmList(s.getSchCompletions(), mod.getTeachingMaterials());
                    module.setDurationCompleted(time.get(0));
                    module.setDuration(time.get(1));
                    modList.add(module);
                }
            }
        }
        return modList;
    }

    public static List<Integer> getTmList(List<SchCompletion> schCompList, List<TeachingMaterial>tmList)
    {
        List<Integer> tmTime=new ArrayList<>();
        int durationCompleted=0;
        int duration=0;
        for(SchCompletion sch:schCompList){
            durationCompleted+=sch.getCompleted();
        }
        for(TeachingMaterial tm:tmList)
        {
            duration+=tm.getDuration();
        }

        tmTime.add(durationCompleted);
        tmTime.add(duration);

        return tmTime;
    }
}

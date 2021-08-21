package com.target.vlearnv1.dtoMenteePlan;

import java.util.List;

public class ModuleForMenteePlan {
    Integer moduleId;
    String moduleName;
    Integer duration;
    Integer durationCompleted;

    public String getModuleName() {
        return moduleName;
    }

    public void setModuleName(String moduleName) {
        this.moduleName = moduleName;
    }

    public Integer getModuleId() {
        return moduleId;
    }

    public void setModuleId(Integer moduleId) {
        this.moduleId = moduleId;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public Integer getDurationCompleted() {
        return durationCompleted;
    }

    public void setDurationCompleted(Integer durationCompleted) {
        this.durationCompleted = durationCompleted;
    }
}

package edu.jmi.dgsx.po;

public class qy_job {
    private Integer id;

    private String handId;

    private String handName;

    private String job;

    private String jobNeed;

    private String state;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHandId() {
        return handId;
    }

    public void setHandId(String handId) {
        this.handId = handId == null ? null : handId.trim();
    }

    public String getHandName() {
        return handName;
    }

    public void setHandName(String handName) {
        this.handName = handName == null ? null : handName.trim();
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job == null ? null : job.trim();
    }

    public String getJobNeed() {
        return jobNeed;
    }

    public void setJobNeed(String jobNeed) {
        this.jobNeed = jobNeed == null ? null : jobNeed.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }
}
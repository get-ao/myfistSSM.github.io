package edu.jmi.dgsx.po;

import java.util.Date;

public class teacher_send {
    private Integer id;

    private String stUser;

    private String stName;

    private String studenId;

    private String student;

    private String info;

    private Date time;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStUser() {
        return stUser;
    }

    public void setStUser(String stUser) {
        this.stUser = stUser == null ? null : stUser.trim();
    }

    public String getStName() {
        return stName;
    }

    public void setStName(String stName) {
        this.stName = stName == null ? null : stName.trim();
    }

    public String getStudenId() {
        return studenId;
    }

    public void setStudenId(String studenId) {
        this.studenId = studenId == null ? null : studenId.trim();
    }

    public String getStudent() {
        return student;
    }

    public void setStudent(String student) {
        this.student = student == null ? null : student.trim();
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info == null ? null : info.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
package edu.jmi.dgsx.po;

public class student_attribute {
    private Integer studentId;

    private String studentName;

    private String studentSex;

    private String studentGrade;

    private String weekly;

    private String attendance;

    private Integer inspectionResults;

    private String adviser;

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName == null ? null : studentName.trim();
    }

    public String getStudentSex() {
        return studentSex;
    }

    public void setStudentSex(String studentSex) {
        this.studentSex = studentSex == null ? null : studentSex.trim();
    }

    public String getStudentGrade() {
        return studentGrade;
    }

    public void setStudentGrade(String studentGrade) {
        this.studentGrade = studentGrade == null ? null : studentGrade.trim();
    }

    public String getWeekly() {
        return weekly;
    }

    public void setWeekly(String weekly) {
        this.weekly = weekly == null ? null : weekly.trim();
    }

    public String getAttendance() {
        return attendance;
    }

    public void setAttendance(String attendance) {
        this.attendance = attendance == null ? null : attendance.trim();
    }

    public Integer getInspectionResults() {
        return inspectionResults;
    }

    public void setInspectionResults(Integer inspectionResults) {
        this.inspectionResults = inspectionResults;
    }

    public String getAdviser() {
        return adviser;
    }

    public void setAdviser(String adviser) {
        this.adviser = adviser == null ? null : adviser.trim();
    }
}
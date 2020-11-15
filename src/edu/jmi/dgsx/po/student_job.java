package edu.jmi.dgsx.po;

public class student_job {
    private Integer studentId;

    private String studentName;

    private String applyJob;

    private String auditSituation;

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

    public String getApplyJob() {
        return applyJob;
    }

    public void setApplyJob(String applyJob) {
        this.applyJob = applyJob == null ? null : applyJob.trim();
    }

    public String getAuditSituation() {
        return auditSituation;
    }

    public void setAuditSituation(String auditSituation) {
        this.auditSituation = auditSituation == null ? null : auditSituation.trim();
    }
}
package edu.jmi.dgsx.po;

public class gl_teacher {
    private String glaccountId;

    private String glaccountname;

    private String gloutline;

    public String getGlAccountId() {
        return glaccountId;
    }

    public void setGlAccountId(String glAccountId) {
        this.glaccountId = glAccountId == null ? null : glAccountId.trim();
    }

    public String getGlAccountName() {
        return glaccountname;
    }

    public void setGlAccountName(String glAccountName) {
        this.glaccountname = glAccountName == null ? null : glAccountName.trim();
    }

    public String getGlOutline() {
        return gloutline;
    }

    public void setGlOutline(String glOutline) {
        this.gloutline = glOutline == null ? null : glOutline.trim();
    }
}
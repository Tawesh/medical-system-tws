package cn.com.scitc.bs.entity;

/**
 * @author:Tws
 * @date:2023/6/1822:43
 */
public class SickHistory {
    private Integer id;
    private String sickName;
    private String sex;
    private Integer age;
    private String phone;
    private String address;
    private String sickHistory1;
    private String sickHistory2;
    private String sickHistory3;
    private String sickStatus;
    private String historyRecord;
    private String checkResult;
    private String judge;
    private String plan;
    private String afterVisit;

    // 默认构造函数
    public SickHistory() {
    }

    // Getter 和 Setter 方法
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSickName() {
        return sickName;
    }

    public void setSickName(String sickName) {
        this.sickName = sickName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSickHistory1() {
        return sickHistory1;
    }

    public void setSickHistory1(String sickHistory1) {
        this.sickHistory1 = sickHistory1;
    }

    public String getSickHistory2() {
        return sickHistory2;
    }

    public void setSickHistory2(String sickHistory2) {
        this.sickHistory2 = sickHistory2;
    }

    public String getSickHistory3() {
        return sickHistory3;
    }

    public void setSickHistory3(String sickHistory3) {
        this.sickHistory3 = sickHistory3;
    }

    public String getSickStatus() {
        return sickStatus;
    }

    public void setSickStatus(String sickStatus) {
        this.sickStatus = sickStatus;
    }

    public String getHistoryRecord() {
        return historyRecord;
    }

    public void setHistoryRecord(String historyRecord) {
        this.historyRecord = historyRecord;
    }

    public String getCheckResult() {
        return checkResult;
    }

    public void setCheckResult(String checkResult) {
        this.checkResult = checkResult;
    }

    public String getJudge() {
        return judge;
    }

    public void setJudge(String judge) {
        this.judge = judge;
    }

    public String getPlan() {
        return plan;
    }

    public void setPlan(String plan) {
        this.plan = plan;
    }

    public String getAfterVisit() {
        return afterVisit;
    }

    public void setAfterVisit(String afterVisit) {
        this.afterVisit = afterVisit;
    }
}

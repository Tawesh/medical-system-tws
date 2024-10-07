package cn.com.scitc.bs.entity;

public class Registration {
    private Integer id;
    private String sickName;
    private String sickPhone;
    private String doctorName;
    private String registrationStartTime;
    private String registrationEndTime;
    private String room;
    private String sickness;

    public Registration() {
    }

    public Registration(Integer id, String sickName, String sickPhone,String doctorName, String registrationStartTime, String registrationEndTime, String room, String sickness) {
        this.id = id;
        this.sickName = sickName;
        this.sickPhone = sickPhone;
        this.registrationStartTime = registrationStartTime;
        this.registrationEndTime = registrationEndTime;
        this.room = room;
        this.doctorName=doctorName;
        this.sickness = sickness;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

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

    public String getSickPhone() {
        return sickPhone;
    }

    public void setSickPhone(String sickPhone) {
        this.sickPhone = sickPhone;
    }

    public String getRegistrationStartTime() {
        return registrationStartTime;
    }

    public void setRegistrationStartTime(String registrationStartTime) {
        this.registrationStartTime = registrationStartTime;
    }

    public String getRegistrationEndTime() {
        return registrationEndTime;
    }

    public void setRegistrationEndTime(String registrationEndTime) {
        this.registrationEndTime = registrationEndTime;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public String getSickness() {
        return sickness;
    }

    public void setSickness(String sickness) {
        this.sickness = sickness;
    }
}

package cn.com.scitc.bs.entity;

public class Patients {
    private Integer id;
    private String name;
    private Integer age;
    private String sex;
    private String phone;
    private String room;
    private String registrationStartTime;
    private String registrationEndTime;
    public Patients(){}
    public Patients(Integer id,String name,Integer age,String sex,String phone,String room,
                    String registrationStartTime,String registrationEndTime){
        this.id=id;
        this.name=name;
        this.age=age;
        this.sex=sex;
        this.phone=phone;
        this.room=room;
        this.registrationStartTime=registrationStartTime;
        this.registrationEndTime=registrationEndTime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
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
}

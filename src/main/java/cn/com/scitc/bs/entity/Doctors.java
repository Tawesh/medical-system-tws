package cn.com.scitc.bs.entity;

public class Doctors {
    private String id;
    private String name;
    private String age;
    private String sex;
    private String phone;
    private String room;
    private String workStartTime;
    private String workEndTime;
    public Doctors(){}
    public Doctors(String id,String name,String age,String sex,String phone,String room,String workStartTime,
                   String workEndTime){
        this.id=id;
        this.name=name;
        this.age=age;
        this.sex=sex;
        this.phone=phone;
        this.room=room;
        this.workStartTime=workStartTime;
        this.workEndTime=workEndTime;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
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

    public String getWorkStartTime() {
        return workStartTime;
    }

    public void setWorkStartTime(String workStartTime) {
        this.workStartTime = workStartTime;
    }

    public String getWorkEndTime() {
        return workEndTime;
    }

    public void setWorkEndTime(String workEndTime) {
        this.workEndTime = workEndTime;
    }
}

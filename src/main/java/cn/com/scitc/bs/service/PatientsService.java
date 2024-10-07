package cn.com.scitc.bs.service;

import cn.com.scitc.bs.entity.Doctors;
import cn.com.scitc.bs.entity.Patients;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author:Tws
 * @date:2023/6/1310:51
 */
@Mapper
public interface PatientsService{
    /**
     * 查询所有
     */
    @Select("select * from patients")
    public List<Patients> findAll();

    /**
     * 按药品id查询
     */
    @Select("select * from patients where id=#{id}")
    public Patients findById(String id);

    /**
     * 按id更新
     */
    @Update("update patients set id=#{id},name=#{name},age=#{age},sex=#{sex},phone=#{phone}," +
            "room=#{room},registrationStartTime=#{rst},registrationEndTime=#{ret} where id=#{id}")
    public int update(String id, String name, String age, String sex, String phone, String room, String rst, String ret);

    /**
     * 删除
     */
    @Delete("delete from patients where id=#{id}")
    public int deleteById(String id);

    /**
     * 插入
     */
    @Insert("insert into patients values(#{id},#{name},#{age},#{sex},#{phone},#{room},#{rst},#{ret})")
    public int insert(String id, String name, String age, String sex, String phone, String room, String rst, String ret);

    @Select("select * from patients where name=#{name}")
    public List<Patients> findByName(String name);

}

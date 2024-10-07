package cn.com.scitc.bs.service;

import cn.com.scitc.bs.entity.Registration;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author:Tws
 * @date:2023/6/1310:59
 */
@Mapper
public interface RegistrationInfoService {
    /**
     * 查询所有
     */
    @Select("select * from registration_info")
    public List<Registration> findAll();

    /**
     * 按药品id查询
     */
    @Select("select * from registration_info where id=#{id}")
    public Registration findById(String id);

    /**
     * 按id更新
     */
    @Update("update registration_info set id=#{id},sickName=#{sickName},sickPhone=#{sickPhone},doctorName=#{doctorName},registrationStartTime=#{rst},registrationEndTime=#{ret},room=#{room},sickness=#{sickness} where id=#{id}")
    public int update(String id, String sickName, String sickPhone,String  doctorName, String room,String sickness, String rst, String ret);

    /**
     * 删除
     */
    @Delete("delete from registration_info where id=#{id}")
    public int deleteById(String id);

    /**
     * 插入
     */
    @Insert("insert into registration_info values (#{id},#{sickName},#{sickPhone},#{doctorName},#{room},#{sickness},#{rst},#{ret})")
    public int insert(String id, String sickName, String sickPhone,String  doctorName, String room,String  sickness, String rst, String ret);


    @Select("select * from registration_info where sickName=#{sickName}")
    public List<Registration> findByName(String sickName);

}

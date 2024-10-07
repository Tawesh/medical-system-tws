package cn.com.scitc.bs.service;

import cn.com.scitc.bs.entity.Doctors;
import cn.com.scitc.bs.entity.Drug;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author:Tws
 * @date:2023/6/1210:34
 */
@Mapper
public interface DoctorService {

    /**
     * 查询所有
     */
    @Select("select * from doctors")
    public List<Doctors> findAll();

    /**
     * 按id查询
     */
    @Select("select * from doctors where id=#{id}")
    public Doctors findById(String id);

    /**
     * 按药品更新
     */
    @Update("update doctors set id=#{id},name=#{name},age=#{age},sex=#{sex},phone=#{phone}," +
            "room=#{room},workStartTime=#{wst},workEndTime=#{wet} where id=#{id}")
    public int update(String id, String name, String age, String sex, String phone, String room, String wst, String wet);

    /**
     * 删除
     */
    @Delete("delete from doctors where id=#{id}")
    public int deleteById(String id);

    /**
     * 插入
     */
    @Insert("insert into doctors values(#{id},#{name},#{age},#{sex},#{phone},#{room},#{wst},#{wet})")
    public int insert(String id, String name, String age, String sex, String phone, String room, String wst, String wet);


    /**
     * 按姓名查询
     */
    @Select("select * from doctors where name=#{name}")
    public List<Doctors> findByName(String name);
}

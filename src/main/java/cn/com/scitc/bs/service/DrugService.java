package cn.com.scitc.bs.service;

import cn.com.scitc.bs.entity.Drug;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author:Tws
 * @date:2023/6/129:48
 */

@Mapper
public interface DrugService {
    /**
     * 查询所有
     */
    @Select("select * from drug")
    public List<Drug> findAll();

    /**
     * 按药品id查询
     */
    @Select("select * from drug where id=#{id}")
    public Drug findById(String id);

    /**
     * 按药品更新
     */
    @Update("update drug set id=#{id},y_name=#{yName},drugPrice=#{price},u_name=#{uName},d_name=#{dName},drugTime=#{drugTime},drugPhoneDoc=#{dpd} where id=#{id}")
    public int update(String id, String yName,String price, String uName, String dName,String dpd,String drugTime);

    /**
     * 删除
     */
    @Delete("delete from drug where id=#{id}")
    public int deleteById(String id);

    /**
     * 插入
     */
    @Insert("insert into drug values (#{id},#{yName},#{price},#{uName},#{dName},#{dpd},#{drugTime})")
    public int insert(String id, String yName,String price, String uName, String dName,String dpd,String drugTime);

    /**
     * 按药品id查询
     */
    @Select("select * from drug where u_name=#{uName}")
    public List<Drug> findByName(String uName);
}

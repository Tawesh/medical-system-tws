package cn.com.scitc.bs.service;

import cn.com.scitc.bs.entity.Administrators;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

/**
 * @author:Tws
 * @date:2023/6/1210:46
 */
@Mapper
public interface AdminService {
    @Select("select * from administrators where email=#{email} and password=#{pwd}")
    public Administrators findUser(String email,String pwd);
}

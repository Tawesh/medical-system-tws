package cn.com.scitc.bs.service;

import cn.com.scitc.bs.entity.BodyData;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author:Tws
 * @date:2023/6/1710:42
 */
@Mapper
public interface BodyDataService {

    @Select("select * from bodyData where sickId = #{sickId}")
    public List<BodyData> findDataById(String sickId);
}

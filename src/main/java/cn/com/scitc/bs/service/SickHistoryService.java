package cn.com.scitc.bs.service;

import cn.com.scitc.bs.entity.SickHistory;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

/**
 * @author:Tws
 * @date:2023/6/1822:45
 */

@Mapper
public interface SickHistoryService {

    @Select("select * from sickHistory where id=#{id}")
    public SickHistory findData(String id);
}

package cn.com.scitc.bs.control.common;

import cn.com.scitc.bs.entity.BodyData;
import cn.com.scitc.bs.service.BodyDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

/**
 * @author:Tws
 * @date:2023/6/1710:40
 */
@RestController
@RequestMapping("/api/bodyData")
public class BodyDataControl {
    @Autowired
    BodyDataService bodyDataService;

    @RequestMapping("sickId")
    public Object dataByIdBody(@RequestParam("id") String id){
        HashMap<Object, Object> objectObjectHashMap = new HashMap<>();
        List<BodyData> dataById = bodyDataService.findDataById(id);
        objectObjectHashMap.put("code",200);
        objectObjectHashMap.put("data",dataById);

        return objectObjectHashMap;
    }

}

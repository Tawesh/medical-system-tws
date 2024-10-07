package cn.com.scitc.bs.control.patient;

import cn.com.scitc.bs.entity.Patients;
import cn.com.scitc.bs.entity.SickHistory;
import cn.com.scitc.bs.service.PatientsService;
import cn.com.scitc.bs.service.SickHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

/**
 * @author:Tws
 * @date:2023/6/1822:46
 */

@Controller
public class HistorySick {
    @Autowired
    SickHistoryService sickHistoryService;
    @Autowired
    PatientsService patientsService;

    @RequestMapping("/api/patient/history")
    public Object findData(@RequestParam("id") String id, HttpServletRequest request){

        SickHistory data = sickHistoryService.findData(id);
        Patients byId = patientsService.findById(id);

        request.setAttribute("name",byId.getName());
        request.setAttribute("data",data);


        return "sickHistory";
    }
}

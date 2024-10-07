package cn.com.scitc.bs.control.patient;

import cn.com.scitc.bs.entity.Patients;
import cn.com.scitc.bs.service.PatientsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

/**
 * @author:Tws
 * @date:2023/6/1721:12
 */
@Controller
public class BodyDataPatient {
    @Autowired
    PatientsService patientsService;
    @RequestMapping("/bodyData/user")
    public String findBuName(@RequestParam("id") String id, HttpServletRequest request){
        Patients byId = patientsService.findById(id);
        request.setAttribute("patientName",byId.getName());
        request.setAttribute("id",id);
        return "/patientMap";
    }
}

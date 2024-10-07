package cn.com.scitc.bs.control.common;

import cn.com.scitc.bs.entity.Doctors;
import cn.com.scitc.bs.entity.Drug;
import cn.com.scitc.bs.entity.Patients;
import cn.com.scitc.bs.entity.Registration;
import cn.com.scitc.bs.service.DoctorService;
import cn.com.scitc.bs.service.DrugService;
import cn.com.scitc.bs.service.PatientsService;
import cn.com.scitc.bs.service.RegistrationInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

/**
 * @author:Tws
 * @date:2023/6/1610:41
 */
@RestController
@RequestMapping("/")
public class PrintFunction {

    @Autowired
    DoctorService doctorService;

    @Autowired
    DrugService drugService;

    @Autowired
    PatientsService patientsService;

    @Autowired
    RegistrationInfoService registrationInfoService;

    //查询所有数据
    @GetMapping("api/print/doctor")
    public Object findAllDoc(){
        HashMap<Object, Object> hashMap = new HashMap<>();
        List<Doctors> all = doctorService.findAll();
        hashMap.put("code",0);
        hashMap.put("data",all);
        return hashMap;
    }

    //查询所有数据
    @GetMapping("api/print/drug")
    public Object findAllDrug(){
        HashMap<Object, Object> hashMap = new HashMap<>();
        List<Drug> all = drugService.findAll();
        hashMap.put("code",0);
        hashMap.put("data",all);
        return hashMap;
    }

    //查询所有数据
    @GetMapping("api/print/patient")
    public Object findAllPatient(){
        HashMap<Object, Object> hashMap = new HashMap<>();
        List<Patients> all = patientsService.findAll();
        hashMap.put("code",0);
        hashMap.put("data",all);
        return hashMap;
    }


    //查询所有数据
    @GetMapping("api/print/registration")
    public Object findAllRegister(){
        HashMap<Object, Object> hashMap = new HashMap<>();
        List<Registration> all = registrationInfoService.findAll();
        hashMap.put("code",0);
        hashMap.put("data",all);
        return hashMap;
    }

}

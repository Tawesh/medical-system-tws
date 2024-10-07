package cn.com.scitc.bs.control.patient;

import cn.com.scitc.bs.entity.Patients;
import cn.com.scitc.bs.service.PatientsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Random;

/**
 * @author:Tws
 * @date:2023/6/198:17
 */
@Controller
@RequestMapping("/")
public class MapAndBody {

    @Autowired
    PatientsService patientsService;

    @RequestMapping("mapAndBody")
    public String mapAndBody(HttpServletRequest request){
        List<Patients> all = patientsService.findAll();
        request.setAttribute("patient",all);

        //随机生成血糖
        Random random = new Random();
        // 生成范围在3.0到10.0之间的随机血糖数据
        double min = 3.0;
        double max = 10.0;
        double randomBloodSugar = min + (max - min) * random.nextDouble();

        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        String formattedBloodSugar = decimalFormat.format(randomBloodSugar);

        request.setAttribute("bloodGlucose",formattedBloodSugar);

        return "patientMapBodyDisplay";
    }
}

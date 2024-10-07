package cn.com.scitc.bs.control.page;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author:Tws
 * @date:2023/6/1211:08
 */
@Controller
@RequestMapping("/")
public class PageUrl {
    @RequestMapping("login")
    public String login() {
        return "/index";
    }

    @RequestMapping("welcome")
    public String welcome() {
        return "/welcome";
    }

    @RequestMapping("policy")
    public String test() {
        return "/policy";
    }

    @RequestMapping("editDoctorPage")
    public String doctorManage() {
        return "/editDoctor";
    }

    @RequestMapping("addDoctorPage")
    public String registrationManage() {
        return "/addDoctor";
    }


    /**
     * 编辑病人页面
     */
    @RequestMapping("editPatientPage")
    public String editPatient() {
        return "/editPatient";
    }

    @RequestMapping("/addPatientPage")
    public String addPatient() {
        return "/addPatient";
    }

    @RequestMapping("addRegistrationPage")
    public String addRegistration() {
        return "/addRegistration";
    }

    @RequestMapping("editRegistrationPage")
    public String editRegistration() {
        return "/editRegistration";
    }

    /**
     * 添加信息页面
     */
    @RequestMapping("editDrugPage")
    public String editDrug() {
        return "/editDrug";
    }

    @RequestMapping("/addDrugPage")
    public String addDrug() {
        return "/addDrug";
    }

    //打印

    @RequestMapping("printDocPage")
    public String printDoc(){
        return "/printDoc";
    }

    @RequestMapping("printDrugPage")
    public String printDrug(){
        return "/printDrug";
    }

    @RequestMapping("printPatientPage")
    public String printPatient(){
        return "/printPatient";
    }

    @RequestMapping("printRegistrationPage")
    public String printRegistration(){
        return "/printRegistration";
    }

    @RequestMapping("/map")
    public String mapJS(){
        return "/map";
    }

//    @RequestMapping("sickHistory")
//    public String sickHistory(){
//        return "/patientMapBodyDisplay";
//    }

    @RequestMapping("patientMap")
    public String patientMap(){
        return "patientMap";
    }

    @RequestMapping("errorPage")
    public String error(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("email");
        session.removeAttribute("msg");
        return "ErrorPage";
    }

    @RequestMapping("test")
    public String te(){
        return "Test";
    }
}

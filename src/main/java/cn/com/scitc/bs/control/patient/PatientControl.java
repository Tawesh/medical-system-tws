package cn.com.scitc.bs.control.patient;

import cn.com.scitc.bs.entity.Doctors;
import cn.com.scitc.bs.entity.Patients;
import cn.com.scitc.bs.service.PatientsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author:Tws
 * @date:2023/6/148:12
 */
@Controller
@RequestMapping("/")
public class PatientControl {
    @Autowired
    PatientsService patientsService;

    /**
     * 展示所有
     */
    @GetMapping("patientManage")
    public String doctorManage(HttpServletRequest request) {
        //查找所有医生信息
        List<Patients> patientsList = patientsService.findAll();
        HttpSession session = request.getSession();
        session.setAttribute("patientList", patientsList);
        session.setAttribute("email", session.getAttribute("email"));
        return "/patientDisplay";
    }

    /**
     * 删除
     */
    @GetMapping("deletePatient")
    public String delete(HttpServletRequest request) {
        String id = request.getParameter("id");
        patientsService.deleteById(id);
        HttpSession session = request.getSession();
        session.setAttribute("email", session.getAttribute("email"));
        return "redirect:/patientManage";
    }

    /**
     * 编辑
     */
    @GetMapping("editPatient")
    public String edit(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        String id = request.getParameter("id");
        HttpSession session = request.getSession();
        Patients byId = patientsService.findById(id);
        redirectAttributes.addFlashAttribute("patient", byId);
        return "redirect:/editPatientPage";
    }

    /**
     * 更新
     */
    @GetMapping("updatePatient")
    public String update(HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("email", session.getAttribute("email"));
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String sex = request.getParameter("sex");
        String phone = request.getParameter("phone");
        String room = request.getParameter("room");
        String wst = request.getParameter("rst");
        String wet = request.getParameter("ret");
        int i = patientsService.update(id, name, age, sex, phone, room, wst, wet);
        if (i == 1) {
            redirectAttributes.addFlashAttribute("info", "亲，修改成功");
            return "redirect:/editPatientPage";
        }
        redirectAttributes.addFlashAttribute("info", "亲，修改失败");
        return "redirect:/editPatientPage";

    }

    /**
     * 添加
     */
    @GetMapping("addPatient")
    public String insert(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        HttpSession session = request.getSession();
        session.setAttribute("email", session.getAttribute("email"));
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String sex = request.getParameter("sex");
        String phone = request.getParameter("phone");
        String room = request.getParameter("room");
        String rst = request.getParameter("rst");
        String ret = request.getParameter("ret");

        System.out.println("age=" + age);
        try {
            int i = patientsService.insert(id, name, age, sex, phone, room, rst, ret);
            if (i == 1) {
                redirectAttributes.addFlashAttribute("info", "亲，添加成功");
                return "redirect:/addPatientPage";
            }
        }
        catch (Exception e){
            redirectAttributes.addFlashAttribute("info", "亲，添加失败了");
            return "redirect:/addPatientPage";
        }
        redirectAttributes.addFlashAttribute("info", "亲，添加失败了");
        return "redirect:/addPatientPage";
    }

    /**
     * 查找
     */
    @GetMapping("findPatient")
    public String findByName(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        HttpSession session = request.getSession();
        session.setAttribute("email", session.getAttribute("email"));
        String name = request.getParameter("name");
        List<Patients> byName = patientsService.findByName(name);
        redirectAttributes.addFlashAttribute("patientList", byName);
        return "redirect:/patientManage";
    }
}

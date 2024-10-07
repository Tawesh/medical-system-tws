package cn.com.scitc.bs.control.registration;

import cn.com.scitc.bs.entity.Patients;
import cn.com.scitc.bs.entity.Registration;
import cn.com.scitc.bs.service.PatientsService;
import cn.com.scitc.bs.service.RegistrationInfoService;
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
 * @date:2023/6/149:59
 */
@Controller
@RequestMapping("/")
public class RegistrationInfoControl {
    @Autowired
    RegistrationInfoService registrationInfoService;

    /**展示所有*/
    @GetMapping("registrationManage")
    public String doctorManage(HttpServletRequest request){
        //查找所有医生信息
        List<Registration> registrationList = registrationInfoService.findAll();
        HttpSession session = request.getSession();
        session.setAttribute("registrationList",registrationList);
        session.setAttribute("email",session.getAttribute("email"));
        return "/registrationDisplay";
    }

    /**删除*/
    @GetMapping("deleteRegistration")
    public String delete(HttpServletRequest request){
        String id = request.getParameter("id");
        registrationInfoService.deleteById(id);
        HttpSession session = request.getSession();
        session.setAttribute("email",session.getAttribute("email"));
        return "redirect:/registrationManage";
    }
    /**编辑*/
    @GetMapping("editRegistration")
    public String edit(HttpServletRequest request, RedirectAttributes redirectAttributes){
        String id = request.getParameter("id");
        HttpSession session = request.getSession();
        Registration byId = registrationInfoService.findById(id);
        redirectAttributes.addFlashAttribute("registration",byId);
        return "redirect:/editRegistrationPage";
    }
    /**更新*/
    @GetMapping("updateRegistration")
    public String update(HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("email",session.getAttribute("email"));
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String sex = request.getParameter("sex");
        String phone = request.getParameter("phone");
        String room = request.getParameter("room");
        String wst = request.getParameter("rst");
        String wet = request.getParameter("ret");
        try{
            int i = registrationInfoService.update(id, name, age, sex, phone, room, wst, wet);
            if(i==1){
                redirectAttributes.addFlashAttribute("info","亲，修改成功");
                return "redirect:/editRegistrationPage";
            }
        }
        catch (Exception e){
            redirectAttributes.addFlashAttribute("info","亲，修改失败");
            return "redirect:/editRegistrationPage";
        }
        redirectAttributes.addFlashAttribute("info","亲，修改失败");
        return "redirect:/editRegistrationPage";
    }
    /**添加*/
    @GetMapping("addRegistration")
    public String insert(HttpServletRequest request, RedirectAttributes redirectAttributes){
        HttpSession session = request.getSession();
        session.setAttribute("email",session.getAttribute("email"));
        String id = request.getParameter("id");
        String sickName = request.getParameter("sickName");
        String sickPhone= request.getParameter("sickPhone");
        String doctorName = request.getParameter("doctorName");
        String room = request.getParameter("room");
        String sickness = request.getParameter("sickness");
        String rst = request.getParameter("rst");
        String ret = request.getParameter("ret");

        int i = registrationInfoService.insert(id, sickName,sickPhone, doctorName,room,sickness,rst, ret);
        if (i==1){
            redirectAttributes.addFlashAttribute("info","亲，添加成功");
            return "redirect:/addRegistrationPage";
        }
        redirectAttributes.addFlashAttribute("info","亲，添加失败了");
        return "redirect:/addRegistrationPage";
    }

    /**查找*/
    @GetMapping("findRegistration")
    public String findByName(HttpServletRequest request, RedirectAttributes redirectAttributes){
        HttpSession session = request.getSession();
        session.setAttribute("email",session.getAttribute("email"));
        String name = request.getParameter("sickName");
        List<Registration> byName = registrationInfoService.findByName(name);
        redirectAttributes.addFlashAttribute("registrationList",byName);
        return "redirect:/registrationManage";
    }
}

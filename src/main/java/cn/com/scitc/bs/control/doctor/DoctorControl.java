package cn.com.scitc.bs.control.doctor;

import cn.com.scitc.bs.entity.Doctors;
import cn.com.scitc.bs.service.DoctorService;
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
 * @date:2023/6/1322:47
 */
@Controller
@RequestMapping("/")
public class DoctorControl {
    @Autowired
    DoctorService doctorService;


    /**展示所有*/
    @GetMapping("doctorManage")
    public String doctorManage(HttpServletRequest request){
        //查找所有医生信息
        List<Doctors> doctorsList = doctorService.findAll();
        HttpSession session = request.getSession();
        session.setAttribute("doctorList",doctorsList);
        session.setAttribute("email",session.getAttribute("email"));
        return "/doctorDisplay";
    }

    /**删除*/
    @GetMapping("deleteDoctor")
    public String delete(HttpServletRequest request){
        String id = request.getParameter("id");
        doctorService.deleteById(id);
        HttpSession session = request.getSession();
        session.setAttribute("email",session.getAttribute("email"));
        return "redirect:/doctorManage";
    }
    /**编辑*/
    @GetMapping("editDoctor")
    public String edit(HttpServletRequest request,RedirectAttributes redirectAttributes){
        String id = request.getParameter("id");
        HttpSession session = request.getSession();
        Doctors byId = doctorService.findById(id);
        redirectAttributes.addFlashAttribute("doctorList",byId);
        return "redirect:/editDoctorPage";
    }
    /**更新*/
    @GetMapping("updateDoctor")
    public String update(HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("email",session.getAttribute("email"));
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String sex = request.getParameter("sex");
        String phone = request.getParameter("phone");
        String room = request.getParameter("room");
        String wst = request.getParameter("workStartTime");
        String wet = request.getParameter("workEndTime");
        int i = doctorService.update(id, name, age, sex, phone, room, wst, wet);
        if(i==1){
            redirectAttributes.addFlashAttribute("info","亲，修改成功");
            return "redirect:/editDoctor";
        }
        redirectAttributes.addFlashAttribute("info","亲，修改失败");
        return "redirect:/editDoctor";

    }
    /**添加*/
    @GetMapping("addDoctor")
    public String insert(HttpServletRequest request, RedirectAttributes redirectAttributes){
        HttpSession session = request.getSession();
        session.setAttribute("email",session.getAttribute("email"));
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String sex = request.getParameter("sex");
        String phone = request.getParameter("phone");
        String room = request.getParameter("room");
        String wst = request.getParameter("workStartTime");
        String wet = request.getParameter("workEndTime");

        System.out.println(name+"\t"+phone);
        try{
            int i = doctorService.insert(id, name, age, sex, phone, room, wst, wet);
            if (i==1){
                redirectAttributes.addFlashAttribute("info","亲，添加成功");
                return "redirect:/addDoctorPage";
            }
        }catch (Exception e){
            redirectAttributes.addFlashAttribute("info","亲，添加失败了");
            return "redirect:/addDoctorPage";
        }

        redirectAttributes.addFlashAttribute("info","亲，添加失败了");
        return "redirect:/addDoctorPage";
    }

    /**查找*/
    @GetMapping("findDoctor")
    public String findByName(HttpServletRequest request, RedirectAttributes redirectAttributes){
        HttpSession session = request.getSession();
        session.setAttribute("email",session.getAttribute("email"));
        String name = request.getParameter("name");
        List<Doctors> byName = doctorService.findByName(name);
        redirectAttributes.addFlashAttribute("doctorList",byName);
        return "redirect:/doctorManage";
    }
}

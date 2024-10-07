package cn.com.scitc.bs.control.login;

import cn.com.scitc.bs.entity.Administrators;
import cn.com.scitc.bs.entity.Doctors;
import cn.com.scitc.bs.service.AdminService;
import cn.com.scitc.bs.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * @author:Tws
 * @date:2023/6/139:36
 */
@Controller
public class LogIn {
    @Autowired
    AdminService adminService;

    @RequestMapping("/bs/api/login")
    public String LoginProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        System.out.println(email+"\t"+password);
        Administrators user = adminService.findUser(email,password);
        HttpSession session = request.getSession();

        if(user!=null){
            System.out.println("登录成功");
            session.setAttribute("email",email);
            session.setAttribute("msg","登录成功");
            return "redirect:/";
        }
        session.setAttribute("msg","用户名或密码输入错误，请联系开发人员解决");
        return "redirect:/";
    }
}

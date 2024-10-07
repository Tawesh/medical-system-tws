package cn.com.scitc.bs.control.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author:Tws
 * @date:2023/6/1610:17
 */
@RequestMapping("/")
@Controller
public class LogOut {

    /**删除session，退出登录*/
    @RequestMapping("logOut")
    public String logOut(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("email");
        session.removeAttribute("msg");

        return "redirect:/";
    }
}

package cn.com.scitc.bs.control;

import cn.com.scitc.bs.entity.Drug;
import cn.com.scitc.bs.entity.Patients;
import cn.com.scitc.bs.service.DrugService;
import com.sun.org.apache.bcel.internal.generic.DDIV;
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
import java.util.List;

/**
 * @author:Tws
 * @date:2023/6/168:24
 */
@Controller
@RequestMapping("/")
public class DrugControl {

    @Autowired
    DrugService drugService;

    /**
     * 展示所有
     */
    @GetMapping("drugManage")
    public String doctorManage(HttpServletRequest request) {
        //查找所有医生信息
        List<Drug> drugList = drugService.findAll();
        HttpSession session = request.getSession();
        session.setAttribute("drugList", drugList);
        session.setAttribute("email", session.getAttribute("email"));
        return "/drugDisplay";
    }

    /**
     * 删除
     */
    @GetMapping("deleteDrug")
    public String delete(HttpServletRequest request) {
        String id = request.getParameter("id");
        drugService.deleteById(id);
        HttpSession session = request.getSession();
        session.setAttribute("email", session.getAttribute("email"));
        return "redirect:/drugManage";
    }

    /**
     * 编辑
     */
    @GetMapping("editDrug")
    public String edit(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        String id = request.getParameter("id");
        HttpSession session = request.getSession();
        Drug byId = drugService.findById(id);
        redirectAttributes.addFlashAttribute("drug", byId);
        return "redirect:/editDrugPage";
    }

    /**
     * 更新
     */
    @GetMapping("updateDrug")
    public String update(HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("email", session.getAttribute("email"));
        String id = request.getParameter("id");
        String yName = request.getParameter("yName");
        String price = request.getParameter("price");
        String uName = request.getParameter("uName");
        String dName = request.getParameter("dName");
        String dpd = request.getParameter("dpd");
        String drugTime = request.getParameter("drugTime");
        int i = drugService.update(id, yName, price, uName, dName, dpd, drugTime);
        if (i == 1) {
            redirectAttributes.addFlashAttribute("info", "亲，修改成功");
            return "redirect:/editDrugPage";
        }
        redirectAttributes.addFlashAttribute("info", "亲，修改失败");
        return "redirect:/editDrugPage";

    }

    /**
     * 添加
     */
    @GetMapping("addDrug")
    public String insert(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        HttpSession session = request.getSession();
        session.setAttribute("email", session.getAttribute("email"));
        String id = request.getParameter("id");
        String yName = request.getParameter("yName");
        String price = request.getParameter("price");
        String uName = request.getParameter("uName");
        String dName = request.getParameter("dName");
        String dpd = request.getParameter("dpd");
        String drugTime = request.getParameter("drugTime");
        int i = drugService.insert(id, yName, price, uName, dName, dpd, drugTime);
        if (i == 1) {
            redirectAttributes.addFlashAttribute("info", "亲，添加成功");
            return "redirect:/addDrugPage";
        }
        redirectAttributes.addFlashAttribute("info", "亲，添加失败了");
        return "redirect:/addDrugPage";
    }

    /**
     * 查找
     */
    @GetMapping("findDrug")
    public String findByName(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        HttpSession session = request.getSession();
        session.setAttribute("email", session.getAttribute("email"));
        String name = request.getParameter("uName");
        List<Drug> byName = drugService.findByName(name);
        redirectAttributes.addFlashAttribute("drugList", byName);
        return "redirect:/drugManage";
    }

}

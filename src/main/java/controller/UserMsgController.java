package controller;

import model.JsonData;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.UserService;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserMsgController {
    @Autowired
    private UserService userService;
    @RequestMapping("/msg")
    public String  userMsg(HttpSession session, HttpServletResponse response) throws IOException {
      if(session.getAttribute("user")==null){
          response.sendRedirect(session.getServletContext().getAttribute("APP_PATH") + "/login.jsp");
          return null;
      }else
          return "user/userMsg";
    }
    @RequestMapping("/updateMsg")
    @ResponseBody
    public JsonData updateMsg(User user, HttpSession session){
        User my = (User) session.getAttribute("user");
        my.setPhone(user.getPhone());
        my.setQQ(user.getQQ());
        my.setSex(user.getSex());
        my.setEmail(user.getEmail());
        userService.updateMsg(my);
        return JsonData.success();
    }
}

package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserMsgController {
    @RequestMapping("/msg")
    public String  userMsg(HttpSession session, HttpServletResponse response) throws IOException {
      if(session.getAttribute("user")==null){
          response.sendRedirect(session.getServletContext().getAttribute("APP_PATH") + "/login.jsp");
          return null;
      }else
          return "user/userMsg";

    }
}

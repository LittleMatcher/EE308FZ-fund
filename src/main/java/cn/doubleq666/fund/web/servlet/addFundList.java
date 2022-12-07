package cn.doubleq666.fund.web.servlet;

import cn.doubleq666.fund.domain.User;
import cn.doubleq666.fund.service.FundService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "addFundList", value = "/addFundList")
public class addFundList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fid = request.getParameter("fid");

        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        FundService fundService = (FundService) applicationContext.getBean("fundService");

        String sessionID = request.getSession().getId();
        List<User> userList = fundService.find_user_by_sessionID(sessionID);
        if (userList.size() != 0) {
            int uid = userList.get(0).getUid();
            fundService.addUserSelect(uid, fid);
        }
    }
}

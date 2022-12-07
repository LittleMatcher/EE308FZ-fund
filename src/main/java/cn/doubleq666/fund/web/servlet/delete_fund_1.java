package cn.doubleq666.fund.web.servlet;

import cn.doubleq666.fund.domain.User;
import cn.doubleq666.fund.service.FundService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.IOException;
import java.util.List;

@WebServlet("/delete_fund_1")
public class delete_fund_1 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        FundService fundService = (FundService) applicationContext.getBean("fundService");

        String sid = request.getParameter("sid");
        String sold_date = request.getParameter("sold_date");
        Double sold_price = Double.parseDouble(request.getParameter("sold_price"));

        String sessionID = request.getSession().getId();
        List<User> userList = fundService.find_user_by_sessionID(sessionID);
        if (userList.size() == 0) {
            return;
        }
        String uid = userList.get(0).getUid().toString();

        fundService.sell(uid, sid, sold_date, sold_price);
//        String date = req.getParameter("date");
//        String unit_price = req.getParameter("unit_price");
//        String quantity = req.getParameter("quantity");

//        fundService.sell(Integer.parseInt(fid), date, Double.parseDouble(unit_price));
//        resp.sendRedirect(req.getContextPath() + "/fund_1");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}

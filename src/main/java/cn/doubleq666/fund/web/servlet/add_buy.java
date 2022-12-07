package cn.doubleq666.fund.web.servlet;

import cn.doubleq666.fund.domain.Fund;
import cn.doubleq666.fund.domain.User;
import cn.doubleq666.fund.service.FundService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

@WebServlet("/add_buy")
public class add_buy extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

//        String
//        Map<String, String[]> map = request.getParameterMap();
//        Fund fund = new Fund();
//        try {
//            BeanUtils.populate(fund, map);
//        } catch (IllegalAccessError e) {
//            e.printStackTrace();
//        } catch (InvocationTargetException e) {
//            e.printStackTrace();
//        } catch (IllegalAccessException e) {
//            e.printStackTrace();
//        }
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        FundService fundService = (FundService) applicationContext.getBean("fundService");

        String fid = request.getParameter("fid");
        String date = request.getParameter("date");
        String unit_price = request.getParameter("unit_price");
        String quantity = request.getParameter("quantity");

        String sessionID = request.getSession().getId();
//        List<User> userList = fundService.find_user_by_sessionID(sessionID);
//        if (userList.size() == 0) {
//            response.sendRedirect(request.getContextPath() + "/login.html");
////            request.getRequestDispatcher("/login.html").forward(request, response);
//            return;
//        }
//        int uid = userList.get(0).getUid();

        fundService.addFund(date, unit_price, quantity, sessionID, fid);

//        request.setAttribute("funds_hold", fundService.findAll_hold(1009, "000001"));
//        request.setAttribute("funds_profit", fundService.findAll_profit(1009, "000001"));
////        req.setAttribute("funds_list", fundService.find_list());
//
//        String [] mapstr = {"odd", "even"};
//        request.setAttribute("mapstr", mapstr);
//
////        req.getRequestDispatcher("/hold.jsp").forward(req, resp);
//        response.sendRedirect(request.getContextPath() + "/fund");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}

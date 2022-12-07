package cn.doubleq666.fund.web.servlet;

import cn.doubleq666.fund.domain.Fund;
import cn.doubleq666.fund.service.FundService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "getHold", value = "/getHold")
public class getHold extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        FundService fundService = (FundService) applicationContext.getBean("fundService");

        List<Fund> fundList_hold = fundService.findAll_hold(1009, "000001");
        request.setAttribute("funds_hold", fundList_hold);
        List<Fund> fundList_profit = fundService.findAll_profit(1009, "000001");
        request.setAttribute("funds_profit", fundList_profit);
        String [] mapstr = {"odd", "even"};
        request.setAttribute("mapstr", mapstr);

        request.getRequestDispatcher("/hold.jsp").forward(request, response);
    }
}

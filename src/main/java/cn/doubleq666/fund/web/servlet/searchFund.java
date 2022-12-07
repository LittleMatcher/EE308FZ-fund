package cn.doubleq666.fund.web.servlet;

import cn.doubleq666.fund.domain.Fund;
import cn.doubleq666.fund.service.FundService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "searchFund", value = "/searchFund")
public class searchFund extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String op = request.getParameter("op");
        System.out.println("xixixi" + op);

        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        FundService fundService = (FundService) applicationContext.getBean("fundService");

        String [] mapstr = {"odd", "even"};
        request.setAttribute("mapstr", mapstr);

        if (op.equals("1")) {
            String fid = request.getParameter("fid");
            request.setAttribute("fundList", fundService.find_list_by_id(fid, "1"));
            request.getRequestDispatcher("/fundList.jsp").forward(request, response);
        } else if (op.equals("2")) {
            String fname = request.getParameter("fname");
            request.setAttribute("fundList", fundService.find_list_by_id(fname, "2"));
            request.getRequestDispatcher("/fundList.jsp").forward(request, response);
        } else if (op.equals("3")) {

        }


    }
}

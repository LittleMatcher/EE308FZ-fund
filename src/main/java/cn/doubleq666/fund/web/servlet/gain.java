package cn.doubleq666.fund.web.servlet;

import cn.doubleq666.fund.domain.Fund;
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

@WebServlet("/gain")
public class gain extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        FundService fundService = (FundService) applicationContext.getBean("fundService");
        List<Fund> tot_gain = fundService.find_tot();
        req.setAttribute("tot_gain", tot_gain);

        String [] mapstr = {"odd", "even"};
        req.setAttribute("mapstr", mapstr);
        req.getRequestDispatcher("/gain.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}

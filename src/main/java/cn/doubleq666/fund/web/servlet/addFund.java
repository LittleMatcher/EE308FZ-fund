package cn.doubleq666.fund.web.servlet;

import cn.doubleq666.fund.domain.FundList;
import cn.doubleq666.fund.domain.User;
import cn.doubleq666.fund.service.FundService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet("/addFund")
public class addFund extends HttpServlet {
    private int uid;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        JdbcTemplate jdbcTemplate = (JdbcTemplate) applicationContext.getBean("jdbcTemplate");
        FundService fundService = (FundService) applicationContext.getBean("fundService");

//        HttpSession session = request.getSession();
        String sessionID = request.getSession().getId();
        String sql = "select uid, name, email, sessionID from fund.user_list where sessionID = ?";
//        List<User> userList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<User>(User.class), session.getId());
        List<User> userList = fundService.find_user_by_sessionID(sessionID);
        if (userList.size() == 0) {
            response.sendRedirect(request.getContextPath() + "/login.html");
//            request.getRequestDispatcher("/login.html").forward(request, response);
            return;
        } else {
            uid = userList.get(0).getUid();
            System.out.println(uid);
        }



        request.setAttribute("funds_hold", fundService.findAll_hold(1009, "000001"));
        request.setAttribute("funds_profit", fundService.findAll_profit(1009, "000001"));

        List<FundList> fundLists = fundService.find_list(uid);
        request.setAttribute("funds_list", fundLists);
        request.setAttribute("funds_cnt", fundLists.size());

        String [] mapstr = {"odd", "even"};
        request.setAttribute("mapstr", mapstr);

        Date now = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat();
        simpleDateFormat.applyPattern("yyyy-MM-dd");
        request.setAttribute("now", now);
        request.setAttribute("simpleDateFormat", simpleDateFormat);
        request.setAttribute("name", userList.get(0).getName());
        request.setAttribute("uid", userList.get(0).getUid());
        request.getRequestDispatcher("/add.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}

package cn.doubleq666.fund.web.servlet;

import cn.doubleq666.fund.domain.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "login", value = "/login")
public class login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        JdbcTemplate jdbcTemplate = (JdbcTemplate) applicationContext.getBean("jdbcTemplate");
        String sql;
        sql = "select uid, sessionID from fund.user_list where email = ? and password = ?";

        List<User> userList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<User>(User.class), email, password);
        if (userList.size() == 0) {
            PrintWriter printWriter = response.getWriter();
            response.setContentType("text/html;charset=utf-8");
            printWriter.write("0");
        } else {
            HttpSession session = request.getSession();
            System.out.println(session.getId());
            sql = "update fund.user_list set sessionID = ? where uid = ?";
            jdbcTemplate.update(sql, session.getId(), userList.get(0).getUid());
//            response.sendRedirect(request.getContextPath() + "/fund_1");
            PrintWriter printWriter = response.getWriter();
            response.setContentType("text/html;charset=utf-8");
            printWriter.write("1");
        }
    }
}

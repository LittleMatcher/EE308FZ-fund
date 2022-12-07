package cn.doubleq666.fund.web.servlet;

import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

public class demo {
    @Test
    public void test() {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        JdbcTemplate jdbcTemplate = (JdbcTemplate) applicationContext.getBean("jdbcTemplate");

        for (int i = 1; i <= 3200000; i++) {
            String sql = "insert into fund.fund_list_1 values(?, ?)";
            jdbcTemplate.update(sql, String.valueOf(i) + "1234567899874566", "xixi");
        }
    }

}

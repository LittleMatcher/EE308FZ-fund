package cn.doubleq666.fund.dao.impl;

import cn.doubleq666.fund.dao.FundDao;
import cn.doubleq666.fund.domain.Fund;
import cn.doubleq666.fund.domain.FundList;
import cn.doubleq666.fund.domain.User;
import cn.doubleq666.fund.service.FundService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class FundDaoImpl implements FundDao {
    @Override
    public List<Fund> findAll_hold(int uid, String fid) {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        JdbcTemplate jdbcTemplate = (JdbcTemplate) applicationContext.getBean("jdbcTemplate");

        String sql = "select sid, date, unit_price, quantity from sale_list where uid = ? and fid = ? and is_sold = 0 order by date asc";
        List<Fund> fundList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Fund>(Fund.class), uid, fid);
        return fundList;
    }

    @Override
    public List<Fund> findAll_profit(int uid, String fid) {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        JdbcTemplate jdbcTemplate = (JdbcTemplate) applicationContext.getBean("jdbcTemplate");
        String sql = "select sid, fid, date, unit_price, quantity, sold_date, sold_price, is_sold from fund.sale_list where uid = ? and fid = ? and is_sold = 1 order by date asc";
        List<Fund> fundList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Fund>(Fund.class), uid, fid);
        return fundList;
    }

    @Override
    public List<Fund> find_tot() {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        JdbcTemplate jdbcTemplate = (JdbcTemplate) applicationContext.getBean("jdbcTemplate");
        String sql = "select * from (select fund_id, date, unit_price, quantity, is_sold, sold_date, sold_price from db1.fund_1 union select fund_id, date, unit_price, quantity, is_sold, sold_date, sold_price from db1.fund_2 union select fund_id, date, unit_price, quantity, is_sold, sold_date, sold_price from db1.fund_3 union select fund_id, date, unit_price, quantity, is_sold, sold_date, sold_price from db1.fund_4 union select fund_id, date, unit_price, quantity, is_sold, sold_date, sold_price from db1.fund_5) a where is_sold = 1 order by date asc;";
        List<Fund> fundList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Fund>(Fund.class));
        return fundList;
    }

    @Override
    public void addFund(String date, String unit_price, String quantity, String sessionID, String fid) {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        JdbcTemplate jdbcTemplate = (JdbcTemplate) applicationContext.getBean("jdbcTemplate");
//        Date date = new Date();
//        SimpleDateFormat simpleDateFormat = new SimpleDateFormat();
//        simpleDateFormat.applyPattern("yyyy-MM-dd");
//        Date date = new Date();
//        String sql = "insert into fund.sale_list values(null, ?, ?, ?, ?, ?, 0, null, null)";
        String sql = "call addFund(?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, sessionID, fid, date, unit_price, quantity);
    }

    @Override
    public void sell(String uid, String sid, String sold_date, double sold_price) {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        JdbcTemplate jdbcTemplate = (JdbcTemplate) applicationContext.getBean("jdbcTemplate");

        Date sd = null;
        try {
            sd = new SimpleDateFormat("yyyy-MM-dd").parse(sold_date);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        String sql = "update fund.sale_list set is_sold = 1, sold_date = ?, sold_price = ? where uid = ? and sid = ?";
        System.out.println(sql);
        jdbcTemplate.update(sql, sold_date, sold_price, uid, sid);
//        String sql1 = "update db1.fund_1 set is_sold = 1 where id = ?";
//        String sql2 = "update db1.fund_1 set sold_date = ?  where id = ?";
//        String sql3 = "update db1.fund_1 set sold_price = ?  where id = ?";
//        jdbcTemplate.update(sql1, id);
//        jdbcTemplate.update(sql2, sd, id);
//        jdbcTemplate.update(sql3, sold_price, id);
    }

    @Override
    public void addUserSelect(int uid, String fid) {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        JdbcTemplate jdbcTemplate = (JdbcTemplate) applicationContext.getBean("jdbcTemplate");

        String sql = "insert into fund.user_select values(?, ?)";
        jdbcTemplate.update(sql, uid, fid);
    }

    public List<FundList> find_list(int uid) {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        JdbcTemplate jdbcTemplate = (JdbcTemplate) applicationContext.getBean("jdbcTemplate");

        String sql = "select fid, fname from (select fid from fund.user_select where uid = ?) fs natural join fund.fund_list fl";
        List<FundList> fundList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<FundList>(FundList.class), uid);
        return fundList;
    }

    public List<FundList> find_list_by_id(String x, String op) {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        JdbcTemplate jdbcTemplate = (JdbcTemplate) applicationContext.getBean("jdbcTemplate");

        if (op.equals("1")) {
            String sql = "select fid, fname from fund.fund_list where fid = ?";
            return jdbcTemplate.query(sql, new BeanPropertyRowMapper<FundList>(FundList.class), x);
        } else if (op.equals("2")) {
            String sql = "select fid, fname from fund.fund_list where fname like '%" + x + "%' limit 5";
            return jdbcTemplate.query(sql, new BeanPropertyRowMapper<FundList>(FundList.class));
        }
        return null;
    }

    public FundList find_fund_info(String fid) {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        JdbcTemplate jdbcTemplate = (JdbcTemplate) applicationContext.getBean("jdbcTemplate");

        String sql = "select fid, fname from fund.fund_list where fid = ?";
        List<FundList> fundList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<FundList>(FundList.class), fid);
        if (fundList.size() != 0) {
            return fundList.get(0);
        }
        return null;
    }

    @Override
    public List<User> find_user_by_sessionID(String sessionID) {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        JdbcTemplate jdbcTemplate = (JdbcTemplate) applicationContext.getBean("jdbcTemplate");

        String sql = "select uid, name, email, sessionID from fund.user_list where sessionID = ?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<User>(User.class), sessionID);
    }
}
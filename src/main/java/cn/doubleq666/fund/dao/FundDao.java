package cn.doubleq666.fund.dao;

import cn.doubleq666.fund.domain.Fund;
import cn.doubleq666.fund.domain.FundList;
import cn.doubleq666.fund.domain.User;

import java.text.ParseException;
import java.util.List;

public interface FundDao {
    List<Fund> findAll_hold(int uid, String fid);
    List<Fund> findAll_profit(int uid, String fid);
    List<Fund> find_tot();

    List<FundList> find_list(int uid);
    List<FundList> find_list_by_id(String fid, String op);

    List<User> find_user_by_sessionID(String sessionID);
    FundList find_fund_info(String fid);
    void addFund(String date, String unit_price, String quantity, String sessionID, String fid);
    void sell(String uid, String sid, String sold_date, double sold_price) throws ParseException;
    void addUserSelect(int uid, String fid);
}

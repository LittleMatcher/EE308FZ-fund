package cn.doubleq666.fund.service.impl;

import cn.doubleq666.fund.dao.FundDao;
import cn.doubleq666.fund.domain.Fund;
import cn.doubleq666.fund.domain.FundList;
import cn.doubleq666.fund.domain.User;
import cn.doubleq666.fund.service.FundService;

import java.text.ParseException;
import java.util.List;

public class FundServiceImpl implements FundService {
    private FundDao fundDao;

    public FundServiceImpl(FundDao fundDao) {
        this.fundDao = fundDao;
    }

    @Override
    public List<Fund> findAll_hold(int uid, String fid) {
        return fundDao.findAll_hold(uid, fid);
    }

    @Override
    public List<Fund> findAll_profit(int uid, String fid) {
        return fundDao.findAll_profit(uid, fid);
    }

    @Override
    public List<Fund> find_tot() {
        return fundDao.find_tot();
    }

    @Override
    public List<FundList> find_list(int uid) {
        return fundDao.find_list(uid);
    }
    public List<FundList> find_list_by_id(String fid, String op) {
        return fundDao.find_list_by_id(fid, op);
    }

    @Override
    public List<User> find_user_by_sessionID(String sessionID) {
        return fundDao.find_user_by_sessionID(sessionID);
    }
    public FundList find_fund_info(String fid) {
        return fundDao.find_fund_info(fid);
    }
    public void addUserSelect(int uid, String fid) {
        fundDao.addUserSelect(uid, fid);
    }
    @Override
    public void addFund(String date, String unit_price, String quantity, String sessionID, String fid) {
        fundDao.addFund(date, unit_price, quantity, sessionID, fid);
    }

    @Override
    public void sell(String uid, String sid, String sold_date, double sold_price) {
        try {
            fundDao.sell(uid, sid, sold_date, sold_price);
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }
}

package cn.doubleq666.fund.domain;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Fund {
    private Integer id;

    private Integer uid;
    private Integer sid;

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    private String fid;
    private Date date;
    private Double unit_price;
    private Double quantity;
    private boolean is_sold;
    private Date sold_date;
    private Double sold_price;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFid() {
        return fid;
    }

    public void setFund_id(String fund_id) {
        this.fid = fund_id;
    }

    public Date getDate() {
//        String formateDate = null;
//        formateDate = DateFormat.getDateInstance().format(date);
//        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        String formateDate = dateFormat.format(sold_date);
        return date;
    }

    public String getDdate() {
//        Date date = new Date();
        String formateDate = null;
        formateDate = DateFormat.getDateInstance().format(date);
        return formateDate;
    }


    public void setDate(Date date) {
        this.date = date;
    }

    public void setHdate(String date) {
        try {
            this.date = new SimpleDateFormat("yyyy-MM-dd").parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    public double getUnit_price() {
        return unit_price;
    }

    public void setUnit_price(double unit_price) {
        this.unit_price = unit_price;
    }

    public double getQuantity() {
        return quantity;
    }

    public void setQuantity(double quantity) {
        this.quantity = quantity;
    }

    public boolean isIs_sold() {
        return is_sold;
    }

    public void setIs_sold(boolean is_sold) {
        this.is_sold = is_sold;
    }

    public Date getSold_date() {
        return sold_date;
    }

    public String getSsold_date() {
        String formateDate = null;
        formateDate = DateFormat.getDateInstance().format(sold_date);
        return formateDate;
    }

    public void setSold_date(Date sold_date) {
        this.sold_date = sold_date;
    }

    public double getSold_price() {
        return sold_price;
    }

    public void setSold_price(double sold_price) {
        this.sold_price = sold_price;
    }

    @Override
    public String toString() {
        return "Fund{" +
                "date=" + date +
                ", unit_price=" + unit_price +
                ", quantity=" + quantity +
                ", is_sold=" + is_sold +
                ", sold_date=" + sold_date +
                ", sold_price=" + sold_price +
                '}';
    }
}

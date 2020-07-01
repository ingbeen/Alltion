/*
create table bid_list(
    bid_number number primary key,
    bid_product_number number references product(product_number),
    bid_id varchar2(15) references member(member_id),
    bid_price number,
    bid_date date default sysdate,
    bid_no number
);
*/

package com.spring.alltion.hongsub;

import java.util.Date;

public class BidVO {
	private int bid_number;
	private int bid_product_number;
	private String bid_id;
	private int bid_price;
	private Date bid_date;
	private int bid_no;
	public int getBid_number() {
		return bid_number;
	}
	public void setBid_number(int bid_number) {
		this.bid_number = bid_number;
	}
	public int getBid_product_number() {
		return bid_product_number;
	}
	public void setBid_product_number(int bid_product_number) {
		this.bid_product_number = bid_product_number;
	}
	public String getBid_id() {
		return bid_id;
	}
	public void setBid_id(String bid_id) {
		this.bid_id = bid_id;
	}
	public int getBid_price() {
		return bid_price;
	}
	public void setBid_price(int bid_price) {
		this.bid_price = bid_price;
	}
	public Date getBid_date() {
		return bid_date;
	}
	public void setBid_date(Date bid_date) {
		this.bid_date = bid_date;
	}
	public int getBid_no() {
		return bid_no;
	}
	public void setBid_no(int bid_no) {
		this.bid_no = bid_no;
	}
}

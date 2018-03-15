/**
 * Creation Date:2018/3/14 14:11
 * <p>
 * Copyright 2010-2018 © 中格软件 Inc. All Rights Reserved
 */
package com.workplat.appdemo.model;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * 用户信息对象
 * QQ:603470086
 *
 * @author 郁晓勇
 * @version 1.0.0
 * @since 2018/3/14 14:11
 */
public class UserDTO {

    /**
     * 用户ID
     */
    @JsonProperty(value = "acc_id")
    private int accId;
    /**
     *部门ID
     */
    @JsonProperty(value = "dept_id")
    private int deptId;
    /**
     * 用户姓名
     */
    @JsonProperty(value = "acc_name")
    private String accName;
    /**
     * 用户登录名
     */
    @JsonProperty(value = "acc_login_name")
    private String accLoginName;
    /**
     *用户职务
     */
    @JsonProperty(value = "acc_duty")
    private String accDuty;
    /**
     * 用户手机号码
     */
    @JsonProperty(value = "acc_mobile")
    private String accMobile;
    /**
     *用户邮箱
     */
    @JsonProperty(value = "acc_email")
    private String accEmail;
    /**
     * 电话短号
     */
    @JsonProperty(value = "acc_tel_cornet")
    private String accTelCornet;
    /**
     * 用户头像
     */
    @JsonProperty(value = "acc_logo_l_url")
    private String accLogo;
    /**
     *用户排序号
     */
    @JsonProperty(value = "acc_order")
    private int accOrder;
    /**
     * 第三方用户ID
     */
    @JsonProperty(value = "third_sys_acc_id")
    private String thirdSysAccId;
    /**
     * 用户状态
     */
    @JsonProperty(value = "acc_state")
    private int accState;

    public int getAccId() {
        return accId;
    }

    public void setAccId(int accId) {
        this.accId = accId;
    }

    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    public String getAccName() {
        return accName;
    }

    public void setAccName(String accName) {
        this.accName = accName;
    }

    public String getAccLoginName() {
        return accLoginName;
    }

    public void setAccLoginName(String accLoginName) {
        this.accLoginName = accLoginName;
    }

    public String getAccDuty() {
        return accDuty;
    }

    public void setAccDuty(String accDuty) {
        this.accDuty = accDuty;
    }

    public String getAccMobile() {
        return accMobile;
    }

    public void setAccMobile(String accMobile) {
        this.accMobile = accMobile;
    }

    public String getAccEmail() {
        return accEmail;
    }

    public void setAccEmail(String accEmail) {
        this.accEmail = accEmail;
    }

    public String getAccTelCornet() {
        return accTelCornet;
    }

    public void setAccTelCornet(String accTelCornet) {
        this.accTelCornet = accTelCornet;
    }

    public String getAccLogo() {
        return accLogo;
    }

    public void setAccLogo(String accLogo) {
        this.accLogo = accLogo;
    }

    public int getAccOrder() {
        return accOrder;
    }

    public void setAccOrder(int accOrder) {
        this.accOrder = accOrder;
    }

    public String getThirdSysAccId() {
        return thirdSysAccId;
    }

    public void setThirdSysAccId(String thirdSysAccId) {
        this.thirdSysAccId = thirdSysAccId;
    }

    public int getAccState() {
        return accState;
    }

    public void setAccState(int accState) {
        this.accState = accState;
    }
}

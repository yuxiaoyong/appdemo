/**
 * Creation Date:2018/3/14 14:04
 * <p>
 * Copyright 2010-2018 © 中格软件 Inc. All Rights Reserved
 */
package com.workplat.appdemo.controller;

import com.workplat.appdemo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Description Of The Class<br/>
 * QQ:603470086
 *
 * @author 郁晓勇
 * @version 1.0.0
 * @since 2018/3/14 14:04
 */
@Controller
public class IndexController {

    @Autowired
    UserService userService;

    /**
     * 样式引导页面地址
     *
     * @author 郁晓勇
     * @date 2018/3/15 13:20
     * @param []
     * @return java.lang.String
     */
    @RequestMapping(value = "/index", method = {RequestMethod.GET})
    public String index(){
        return "index";
    }

    /**
     * 用户身份信息显示页面
     *
     * @author 郁晓勇
     * @date 2018/3/15 13:20
     * @param [sessionId, model]
     * @return java.lang.String
     */
    @RequestMapping(value = "/user", method = {RequestMethod.GET})
    public String user(@RequestHeader("session_id")String sessionId, Model model){
        System.out.println("用户身份标识：" + sessionId);
        model.addAttribute("user", userService.getUserDTO(sessionId));
        return "user";
    }

    /**
     * 设备接口页面
     *
     * @author 郁晓勇
     * @date 2018/3/15 13:21
     * @param []
     * @return java.lang.String
     */
    @RequestMapping(value = "/device", method = {RequestMethod.GET})
    public String device(){
        return "device";
    }

    /**
     * 扫码接口页面
     *
     * @author 郁晓勇
     * @date 2018/3/15 13:22
     * @param []
     * @return java.lang.String
     */
    @RequestMapping(value = "/scan", method = {RequestMethod.GET})
    public String scan(){
        return "scan";
    }

    /**
     * 网络设备接口页面
     *
     * @author 郁晓勇
     * @date 2018/3/15 13:22
     * @param []
     * @return java.lang.String
     */
    @RequestMapping(value = "/network", method = {RequestMethod.GET})
    public String network(){
        return "network";
    }

    /**
     * webview窗口接口页面
     *
     * @author 郁晓勇
     * @date 2018/3/15 13:22
     * @param []
     * @return java.lang.String
     */
    @RequestMapping(value = "/webview", method = {RequestMethod.GET})
    public String webview(){
        return "webview";
    }

    /**
     * webview详情页面
     *
     * @author 郁晓勇
     * @date 2018/3/15 13:22
     * @param []
     * @return java.lang.String
     */
    @RequestMapping(value = "/webview1", method = {RequestMethod.GET})
    public String webview1(){
        return "webview1";
    }

    /**
     * 图片接口页面
     *
     * @author 郁晓勇
     * @date 2018/3/15 13:23
     * @param []
     * @return java.lang.String
     */
    @RequestMapping(value = "/image", method = {RequestMethod.GET})
    public String image(){
        return "image";
    }

    /**
     * 位置接口页面
     *
     * @author 郁晓勇
     * @date 2018/3/15 13:23
     * @param []
     * @return java.lang.String
     */
    @RequestMapping(value = "/location", method = {RequestMethod.GET})
    public String location(){
        return "location";
    }

    /**
     * 分享接口页面
     *
     * @author 郁晓勇
     * @date 2018/3/15 13:24
     * @param []
     * @return java.lang.String
     */
    @RequestMapping(value = "/share", method = {RequestMethod.GET})
    public String share(){
        return "share";
    }

    /**
     * 视频接口页面
     *
     * @author 郁晓勇
     * @date 2018/3/15 13:24
     * @param []
     * @return java.lang.String
     */
    @RequestMapping(value = "/video", method = {RequestMethod.GET})
    public String video(){
        return "video";
    }

    /**
     * 音频接口页面
     *
     * @author 郁晓勇
     * @date 2018/3/15 13:24
     * @param []
     * @return java.lang.String
     */
    @RequestMapping(value = "/audio", method = {RequestMethod.GET})
    public String audio(){
        return "audio";
    }

}

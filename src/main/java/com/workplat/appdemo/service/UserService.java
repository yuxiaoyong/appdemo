/**
 * Creation Date:2018/3/14 15:17
 * <p>
 * Copyright 2010-2018 © 中格软件 Inc. All Rights Reserved
 */
package com.workplat.appdemo.service;

import com.workplat.appdemo.model.UserDTO;

/**
 * Description Of The Class<br/>
 * QQ:603470086
 *
 * @author 郁晓勇
 * @version 1.0.0
 * @since 2018/3/14 15:17
 */
public interface UserService {

    /**
     * 根据sessionId调用平台查询查询用户身份信息
     *
     * @author 郁晓勇
     * @date 2018/3/15 13:19
     * @param [sessionId]  用户身份标识
     * @return com.workplat.appdemo.model.UserDTO
     */ 
    public UserDTO getUserDTO(String sessionId);

}

/**
 * Creation Date:2018/3/14 15:18
 * <p>
 * Copyright 2010-2018 © 中格软件 Inc. All Rights Reserved
 */
package com.workplat.appdemo.service.impl;

import com.workplat.appdemo.model.UserDTO;
import com.workplat.appdemo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

/**
 * Description Of The Class<br/>
 * QQ:603470086
 *
 * @author 郁晓勇
 * @version 1.0.0
 * @since 2018/3/14 15:18
 */
@Service
public class UserServiceImpl implements UserService {

    @Value("${workplat.appkey}")
    private String appkey;
    @Value("${workplat.gateway}")
    private String gateway;

    @Autowired
    private RestTemplate restTemplate;

    @Override
    public UserDTO getUserDTO(String sessionId) {
        String url = gateway + "/api/entrance/sessionLoad?app_key="+appkey+"&session_id="+sessionId;
        UserDTO user = restTemplate.getForObject(url, UserDTO.class);
        return user;
    }
}

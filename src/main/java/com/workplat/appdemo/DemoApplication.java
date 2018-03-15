/**
 * Creation Date:2018/3/14 13:46
 * <p>
 * Copyright 2010-2018 © 中格软件 Inc. All Rights Reserved
 */
package com.workplat.appdemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

/**
 * Description Of The Class<br/>
 * QQ:603470086
 *
 * @author 郁晓勇
 * @version 1.0.0
 * @since 2018/3/14 13:46
 */
@SpringBootApplication
public class DemoApplication {

    @Bean
    public RestTemplate getRestTemplate(){
        return new RestTemplate();
    }

    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }

}

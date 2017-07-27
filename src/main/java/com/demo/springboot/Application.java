package com.demo.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.embedded.ConfigurableEmbeddedServletContainer;
import org.springframework.boot.context.embedded.EmbeddedServletContainerCustomizer;
import org.springframework.boot.web.support.SpringBootServletInitializer;

/**
 * Spring Boot 应用启动类
 *
 */
// Spring Boot 应用的标识
@SpringBootApplication

public class Application extends SpringBootServletInitializer implements EmbeddedServletContainerCustomizer {  
  
    @Override  
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {  
        return builder.sources(Application.class);  
    }  
      
  
  
    @Override  
    public void customize(ConfigurableEmbeddedServletContainer container) {  
        container.setPort(8080);  //设置服务的端口，默认为8080
    }  



    public static void main(String[] args) {
        // 程序启动入口
        // 启动嵌入式的 Tomcat 并初始化 Spring 环境及其各 Spring 组件
        SpringApplication.run(Application.class,args);
    }
}
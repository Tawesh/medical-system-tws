package cn.com.scitc.bs.config;

/**
 * @author:Tws
 * @date:2023/5/1122:50
 */

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        // 定义静态资源的访问路径 // 定义静态资源的存放目录
        registry.addResourceHandler("/**")
                .addResourceLocations("classpath:/static/");
    }

}


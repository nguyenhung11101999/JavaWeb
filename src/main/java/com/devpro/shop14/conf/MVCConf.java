package com.devpro.shop14.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/*import com.devpro.shop14.Constants;*/


//la 1 bean ma spring hieu duoc
//bean nay dung de cau hinh
@Configuration
public class MVCConf implements WebMvcConfigurer/* Constants*/{
	/**
	 * cấu hình các static resources.
	 */
	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**").addResourceLocations("classpath:/css/");
		registry.addResourceHandler("/js/**").addResourceLocations("classpath:/js/");
		registry.addResourceHandler("/images/**").addResourceLocations("classpath:/images/");
		registry.addResourceHandler("/backend/**").addResourceLocations("classpath:/backend/");
		/*
		 * registry.addResourceHandler("/upload/**").addResourceLocations("file:" +
		 * ROOT_UPLOAD_PATH);
		 */
	}
	// cấu hình cho MVC biết chỗ folder để lấy view trả về cho Browser.
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		bean.setViewClass(JstlView.class);
		bean.setPrefix("/WEB-INF/views/"); // thư mục gốc chứa các file jsp.
		bean.setSuffix(".jsp");
		return bean;
	}
}

package javaspring.Laptopshop.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
public class MvcConfig implements WebMvcConfigurer {
    @Bean
    public ViewResolver viewResolver() {
        final InternalResourceViewResolver bean = new InternalResourceViewResolver();
        bean.setViewClass(JstlView.class);
        bean.setPrefix("/WEB-INF/view/");
        bean.setSuffix(".jsp");
        return bean;
    }

    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        registry.viewResolver(viewResolver());
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        // CSS resources
        registry.addResourceHandler("/css/**").addResourceLocations("/resources/css/");

        // Specific CSS subdirectories
        registry.addResourceHandler("/css/pages/**").addResourceLocations("/resources/css/pages/");
        registry.addResourceHandler("/css/widgets/**").addResourceLocations("/resources/css/widgets/");

        // js

        registry.addResourceHandler("/js/**").addResourceLocations("/resources/js/");

        // Image resources
        registry.addResourceHandler("/images/bg/**").addResourceLocations("/resources/images/bg/");
        registry.addResourceHandler("/images/faces/**").addResourceLocations("/resources/images/faces/");
        registry.addResourceHandler("/images/logo/**").addResourceLocations("/resources/images/logo/");

        // vendor
        registry.addResourceHandler("/vendors/apexcharts/**").addResourceLocations("/resources/vendors/apexcharts/");
        registry.addResourceHandler("/vendors/bootstrap-icons/**")
                .addResourceLocations("/resources/vendors/bootstrap-icons/");
        registry.addResourceHandler("/vendors/chartjs/**").addResourceLocations("/resources/vendors/chartjs/");

        registry.addResourceHandler("/vendors/perfect-scrollbar/**")
                .addResourceLocations("/resources/vendors/perfect-scrollbar/");
        registry.addResourceHandler("/vendors/iconly/**").addResourceLocations("/resources/vendors/iconly/");
        registry.addResourceHandler("/vendors/jquery/**").addResourceLocations("/resources/vendors/jquery/");

    }

}

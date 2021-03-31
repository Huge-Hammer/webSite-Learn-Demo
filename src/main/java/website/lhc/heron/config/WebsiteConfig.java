package website.lhc.heron.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.system.ApplicationHome;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.io.File;

@Configuration
public class WebsiteConfig implements WebMvcConfigurer {
    @Value("${local.file.dir}")
    private String fileDir;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        ApplicationHome applicationHome = new ApplicationHome(getClass());
        // 当前运行程序路径
        File jarFile = applicationHome.getSource();
        // 存储文件路径
        String filePath = jarFile.getParentFile().toString() + fileDir;
        /**
         * 资源映射路径
         * addResourceHandler：访问映射路径
         * addResourceLocations：资源绝对路径
         */
        registry.addResourceHandler("/webfile/**")
                .addResourceLocations("file:"+filePath);
    }
}


package website.lhc.heron.config;

import java.util.Properties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import com.github.pagehelper.PageHelper;

/**
 * @author Cj
 * @version 1.0
 * @date 2020/1/12
 */

@Configuration
public class PageHelperConfig {

    @Bean
    public PageHelper pageHelper() {

        PageHelper pageHelper = new PageHelper();
        Properties p = new Properties();
        p.setProperty("offsetAsPageNum", "true");
        p.setProperty("rowBoundsWithCount", "true");
        p.setProperty("reasonable", "true");
        pageHelper.setProperties(p);
        return pageHelper;

    }

}

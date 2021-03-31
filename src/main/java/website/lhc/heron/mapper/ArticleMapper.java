package website.lhc.heron.mapper;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import website.lhc.heron.framework.mybatis.BaseMapper;
import website.lhc.heron.model.Article;

import java.util.List;
import java.util.Map;

@Component
public interface ArticleMapper extends BaseMapper<Article> {
    List<Map<String, Object>> getNewsList();

    List<Map<String, Object>> getRecruitmentList();

    List<Map<String, Object>> getSolutionWaterList();
    List<Map<String, Object>> getSolutionGasList();
    List<Map<String, Object>> getSolutionSecurityList();
    List<Map<String, Object>> getSolutionSOList();
    List<Map<String, Object>> getSolutionCaseList();

    List<Map<String, Object>> getServiceSquirrelList();
    List<Map<String, Object>> getServiceWaterList();
    List<Map<String, Object>> getServiceGasList();
    List<Map<String, Object>> getServiceSecurityList();
    List<Map<String, Object>> getServiceTerminalList();
    List<Map<String, Object>> getServiceThirdPartyList();

    List<Map<String, Object>> getSolutionList();
}


package website.lhc.heron.service;

import com.github.pagehelper.PageInfo;
import website.lhc.heron.dto.ArticleDto;
import website.lhc.heron.model.Article;

import java.util.List;
import java.util.Map;

public interface ArticleService {

    void addArticle(ArticleDto dto);

    PageInfo<Article> pageArticle(int current, int size);


    Map<String, String> getContentById(long id);

    void removeArticle(String id);

    Article getArticleById(long id);

    void updateArticle(ArticleDto dto);

    List<Map<String, Object>> getNewsList();

    PageInfo pageNews(int current, int size);

    PageInfo pageSolution(int current, int size);

    PageInfo pageRecruitment(int current, int size);


    List<Map<String, Object>> getRecruitmentList();


    List<Map<String, Object>> getSolutionList();

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




}

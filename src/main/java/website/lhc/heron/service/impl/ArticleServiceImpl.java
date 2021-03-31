package website.lhc.heron.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;
import website.lhc.heron.dto.ArticleDto;
import website.lhc.heron.mapper.ArticleMapper;
import website.lhc.heron.model.Article;
import website.lhc.heron.service.ArticleService;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleMapper articleMapper;

    @Override
    public List<Map<String, Object>> getNewsList(){
        return articleMapper.getNewsList();
    }

    @Override
    public List<Map<String, Object>> getRecruitmentList() { return articleMapper.getRecruitmentList(); }

    @Override
    public  List<Map<String, Object>> getSolutionWaterList(){
        return articleMapper.getSolutionWaterList();
    }

    @Override
    public List<Map<String, Object>> getSolutionGasList(){
        return articleMapper.getSolutionGasList();
    }

    @Override
    public List<Map<String, Object>> getSolutionSecurityList(){
        return articleMapper.getSolutionSecurityList();
    }

    @Override
    public List<Map<String, Object>> getSolutionSOList(){ return  articleMapper.getSolutionSOList(); }

    @Override
    public List<Map<String, Object>> getSolutionCaseList() { return articleMapper.getSolutionCaseList(); }

    @Override
    public List<Map<String, Object>> getServiceSquirrelList() { return articleMapper.getServiceSquirrelList(); }

    @Override
    public List<Map<String, Object>> getServiceWaterList() { return articleMapper.getServiceWaterList(); }

    @Override
    public List<Map<String, Object>> getServiceGasList() { return articleMapper.getServiceGasList(); }

    @Override
    public List<Map<String, Object>> getServiceSecurityList() { return articleMapper.getServiceSecurityList(); }

    @Override
    public List<Map<String, Object>> getServiceTerminalList() { return articleMapper.getServiceTerminalList(); }

    @Override
    public List<Map<String, Object>> getServiceThirdPartyList() { return articleMapper.getServiceThirdPartyList(); }

    @Override
    public List<Map<String, Object>> getSolutionList(){return articleMapper.getSolutionList();};

    @Override
    public void addArticle(ArticleDto dto) {
        Article article = new Article();
        article.setArticleName(dto.getTitle());
        article.setContent(dto.getContent());
        article.setArticleType(dto.getType());
        article.setArticleCover(dto.getCover());
        article.setArticleOutline(dto.getOutline());
        article.setCreateTime(new Date());
        article.setCreateBy("admin");
        articleMapper.insertUseGeneratedKeys(article);
    }

    @Override
    public PageInfo<Article> pageArticle(int current, int size) {
        PageHelper.offsetPage(current, size);
        Example example = new Example(Article.class);
        example.orderBy("createTime").desc();
        List<Article> list = articleMapper.selectByExample(example);
        return new PageInfo<>(list);
    }

    @Override
    public PageInfo pageNews(int current, int size) {

        PageHelper.startPage(current, size);
        List<Map<String, Object>> list = getNewsList();
        PageInfo pageInfo = new PageInfo(list);

        return pageInfo;
    }

    @Override
    public PageInfo pageSolution(int current,int size){
        PageHelper.startPage(current, size);
        List<Map<String, Object>> list = getSolutionList();
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public PageInfo pageRecruitment(int current, int size) {
        PageHelper.startPage(current, size);
        List<Map<String, Object>> list = getRecruitmentList();
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public Map<String, String> getContentById(long id) {
        Example example = new Example(Article.class);
        example.selectProperties("content", "articleName");
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("id", id);
        Article article = articleMapper.selectOneByExample(example);
        Map<String, String> map = new HashMap<>(2);
        map.put("name", article.getArticleName());
        map.put("cover",article.getArticleCover());
        map.put("outline",article.getArticleOutline());
        map.put("content", article.getContent());
        map.put("type",article.getArticleType());
        return map;
    }

    @Override
    public void removeArticle(String id) {
        String[] ids = id.split(",");
        for (String i:ids){
            articleMapper.deleteByPrimaryKey(i);
        }
    }

    @Override
    public Article getArticleById(long id) {
        Article article = articleMapper.selectByPrimaryKey(id);
        return article;
    }

    @Override
    public void updateArticle(ArticleDto dto) {
        Article article = new Article();
        article.setId(dto.getId());
        article.setArticleName(dto.getTitle());
        article.setContent(dto.getContent());
        article.setArticleType(dto.getType());
        article.setArticleCover(dto.getCover());
        article.setArticleOutline(dto.getOutline());
        article.setUpdateTime(new Date());
        articleMapper.updateByPrimaryKeySelective(article);
    }
}

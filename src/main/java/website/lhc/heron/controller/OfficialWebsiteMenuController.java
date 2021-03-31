package website.lhc.heron.controller;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import website.lhc.heron.service.ArticleService;
import website.lhc.heron.service.MenuService;
import java.util.List;
import java.util.Map;

/**
 * @author GCS
 * @version 1.0
 * @date 2020/12/20
 */

@Controller
@RequestMapping(value = "front")
public class OfficialWebsiteMenuController extends AbstractController {

    @Autowired
    private MenuService menuService;

    @Autowired
    private ArticleService articleService;

    /**
     * 获取官网导航栏tree
     * @return
     */
    @ResponseBody
    @GetMapping(value = "getNavBar")
    public List<Map<String, Object>> getNavBar() {
        return menuService.listNavBar();
    }

    /**
    * 新闻资讯
    * */
    @ResponseBody
    @GetMapping(value = "news")
    public List<Map<String, Object>> getNewsList(){
        return articleService.getNewsList();
    }

    /**
     * 招聘信息
     * */
    @ResponseBody
    @GetMapping(value = "recruitment")
    public List<Map<String, Object>> getRecruitmentList(){
        return articleService.getRecruitmentList();
    }

    /**
     * 产品与服务squirrel云平台
     */
    @ResponseBody
    @GetMapping(value = "serviceSquirrel")
    public List<Map<String, Object>> getServiceSquirrelList(){ return articleService.getServiceSquirrelList();}

    /**
     * 产品与服务-环境检测仪器-水环境
     */
    @ResponseBody
    @GetMapping(value = "serviceWater")
    public List<Map<String, Object>> getServiceWaterList(){ return articleService.getServiceWaterList();}

    /**
     * 产品与服务-环境检测仪器-气环境
     */
    @ResponseBody
    @GetMapping(value = "serviceGas")
    public List<Map<String, Object>> getServiceGasList(){ return articleService.getServiceGasList();}

    /**
     * 产品与服务-环境检测仪器-安全服务
     */
    @ResponseBody
    @GetMapping(value = "serviceSecurity")
    public List<Map<String, Object>> getServiceSecurityList(){ return articleService.getServiceSecurityList();}

    /**
     * 产品与服务通用智能终端
     */
    @ResponseBody
    @GetMapping(value = "serviceTerminal")
    public List<Map<String, Object>> getServiceTerminalList(){ return articleService.getServiceTerminalList();}

    /**
     * 产品与服务第三方服务
     */
    @ResponseBody
    @GetMapping(value = "serviceThirdParty")
    public List<Map<String, Object>> getServiceThirdPartyList(){ return articleService.getServiceThirdPartyList();}

    /**
    * 解决方案水环境
    */
    @ResponseBody
    @GetMapping(value = "solutionWater")
    public List<Map<String, Object>> getSolutionWaterList(){ return articleService.getSolutionWaterList();}

    /**
     * 解决方案气环境
     */
    @ResponseBody
    @GetMapping(value = "solutionGas")
    public List<Map<String, Object>> getSolutionGasList(){ return articleService.getSolutionGasList();}

    /**
     * 解决方案安全服务
     */
    @ResponseBody
    @GetMapping(value = "solutionSecurity")
    public List<Map<String, Object>> getSolutionSecurityList(){ return articleService.getSolutionSecurityList();}

    /**
    * 解决方案服务与运营SO
    */
    @ResponseBody
    @GetMapping(value = "solutionSO")
    public List<Map<String, Object>> getSolutionSOList(){
        return articleService.getSolutionSOList();
    }

    /**
     * 解决方案经典案例
     */
    @ResponseBody
    @GetMapping(value = "solutionCase")
    public List<Map<String, Object>> getSolutionCaseList(){
        return articleService.getSolutionCaseList();
    }


    @ResponseBody
    @PostMapping(value = "articles")
    public PageInfo getArticleList(
                                 @RequestParam(value = "curr", required = true, defaultValue = "1") int current,
                                 @RequestParam(value = "limit", required = true, defaultValue = "5") int size){

        PageInfo articles = articleService.pageNews(current,size);
//        PageInfo<Map<String, Object>> pageInfo = new PageInfo<>(articles);
        return articles;
    }

    @ResponseBody
    @GetMapping(value = "newsDetail")
    public ModelAndView NewsDetail(@RequestParam(value = "id") long id) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("../static/page/newsDetail");
        Map<String, String> map = articleService.getContentById(id);
        modelAndView.addObject("name", map.get("name"));
        modelAndView.addObject("content", map.get("content"));
        return modelAndView;
    }

}

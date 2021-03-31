package website.lhc.heron.controller;

import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import website.lhc.heron.service.ArticleService;
import website.lhc.heron.service.MenuService;

@Slf4j
@Api(tags = "招聘信息")
@Controller
@RequestMapping(value = "recruitment")
public class RecruitmentController extends AbstractController {
    @Autowired
    private ArticleService articleService;

    @Autowired
    private MenuService menuService;

    @ApiOperation(value = "跳转招聘信息页面")
    @RequiresPermissions(value = "sys:recruitment:view")
    @GetMapping(value = "/recruitmentListPage")
    public ModelAndView recuritListPage(@RequestParam(value = "menuName", required = false, defaultValue = "Heron") String name){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("recruitment/recruitmentList");
        modelAndView.addObject("text", name);
        modelAndView.addObject("menus", menuService.getMenuByUserId(getUerId()));
        return modelAndView;
    }

    @ApiOperation(value = "获取招聘信息分页数据")
    @ResponseBody
    @GetMapping(value = "pageRecruitment")
    @RequiresPermissions(value = "sys:recruitment:view")
    public PageInfo getRecruitmentList(
            @RequestParam(value = "curr", required = true, defaultValue = "1") int current,
            @RequestParam(value = "limit", required = true, defaultValue = "5") int size){

        PageInfo recruitment = articleService.pageRecruitment(current,size);
        return recruitment;
    }
}

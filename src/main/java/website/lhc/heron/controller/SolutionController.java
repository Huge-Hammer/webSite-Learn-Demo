package website.lhc.heron.controller;

import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import website.lhc.heron.service.ArticleService;
import website.lhc.heron.service.MenuService;

@Slf4j
@Api(tags = "解决方案")
@Controller
@RequestMapping(value = "solution")
public class SolutionController  extends AbstractController {
    @Autowired
    private ArticleService articleService;

    @Autowired
    private MenuService menuService;

    @ApiOperation(value = "跳转解决方案页面")
    @RequiresPermissions(value = "sys:solution:view")
    @GetMapping(value = "/solutionListPage")
    public ModelAndView solutionListPage(@RequestParam(value = "menuName", required = false, defaultValue = "Heron") String name){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("solution/solutionList");
        modelAndView.addObject("text", name);
        modelAndView.addObject("menus", menuService.getMenuByUserId(getUerId()));
        return modelAndView;
    }

    @ApiOperation(value = "获取解决方案分页数据")
    @ResponseBody
    @GetMapping(value = "pageSolution")
    @RequiresPermissions(value = "sys:solution:view")
    public PageInfo getSolutionList(
            @RequestParam(value = "curr", required = true, defaultValue = "1") int current,
            @RequestParam(value = "limit", required = true, defaultValue = "5") int size){

        PageInfo solution = articleService.pageSolution(current,size);
        return solution;
    }
}

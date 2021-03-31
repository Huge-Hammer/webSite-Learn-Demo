package website.lhc.heron.controller;

import com.github.pagehelper.PageInfo;
import com.google.common.collect.Maps;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.system.ApplicationHome;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import website.lhc.heron.config.WebsiteConfig;
import website.lhc.heron.model.Resource;
import website.lhc.heron.service.MenuService;
import website.lhc.heron.service.ResourceService;
import website.lhc.heron.util.Assert;
import website.lhc.heron.util.JsonUtil;
import website.lhc.heron.util.Resp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.*;

@Slf4j
@Api(tags = "资源管理")
@Controller
@RequestMapping(value = "resource")
public class ResourceController extends AbstractController {

    @Value("${local.file.dir}")
    private String fileDir;

    @ApiOperation(value = "文件上传")
    @ResponseBody
    @PostMapping(value = "uploadFile")
    public Map<String, Object> uploadFile(@RequestParam(value = "file") MultipartFile file,HttpServletRequest request) throws IOException {

        Map<String, Object> map = Maps.newHashMapWithExpectedSize(2);
        if(file.isEmpty() || file==null){
            map.put("error",1);
            map.put("message","文件为空，请重新上传！");
            return map;
        }
        Assert.stat(file.isEmpty(), "文件为空，请选择文件");
        try {
            Date date = new Date();
            SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
            String timeStr = "file_" + format.format(date);//时间戳
            String fileName = file.getOriginalFilename();//文件名
            String[] ext = fileName.split("\\.");;//获取后缀格式
            String uploadFileName = timeStr+"."+ext[ext.length-1];//生成新文件
            File  targetFile = new File (fileDir,uploadFileName);//目标文件
            if (!targetFile.getParentFile().exists()){
                targetFile.getParentFile().mkdirs();
            }
            //传图片一步到位
            file.transferTo(targetFile);
            String basePath = request.getScheme() + "://" + request.getServerName()+":"+ request.getServerPort() + "/webfile/" + uploadFileName;
            map.put("url",basePath);
            return map;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @ApiOperation(value = "文章封面上传")
    @RequestMapping(value = "uploadCover")
    @ResponseBody
    public Map coverUpload(MultipartFile cover,HttpServletRequest request){
        //保存上传
        OutputStream out = null;
        InputStream fileInput = null;
        try {
            if(cover!=null){
                String coverName = cover.getOriginalFilename(); //初始封面名
                String[] ext = coverName.split("\\.");;//后缀
                Date date = new Date();
                SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
                String timeStr = "cover_" + format.format(date);//时间戳
                String uploadCoverName = timeStr+"."+ext[ext.length-1];//生成新封面名
                ApplicationHome applicationHome = new ApplicationHome(getClass());
                // 当前运行程序路径
                File jarFile = applicationHome.getSource();
                // 存储文件路径
                String filePath = jarFile.getParentFile().toString() + fileDir;
                File  targetFile = new File (filePath,uploadCoverName);//目标文件
                if (!targetFile.getParentFile().exists()){
                    targetFile.getParentFile().mkdirs();
                }
                cover.transferTo(targetFile);
                String basePath = request.getScheme() + "://" + request.getServerName()+":"+ request.getServerPort() + "/webfile/" + uploadCoverName;
                Map<String,Object> map2=new HashMap<>();
                Map<String,Object> map=new HashMap<>();
                map.put("code",0);
                map.put("msg","");
                map.put("data",map2);
                map2.put("src",basePath);
                return map;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }finally{
            try {
                if(out!=null){
                    out.close();
                }
                if(fileInput!=null){
                    fileInput.close();
                }
            } catch (IOException e) {
            }
        }
        Map<String,Object> map=new HashMap<>();
        map.put("code",1);
        map.put("msg","");
        return map;
    }
}

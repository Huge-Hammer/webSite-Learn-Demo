package website.lhc.heron.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import website.lhc.heron.mapper.UserRoleInfoMapper;

import website.lhc.heron.service.UserRoleService;

import java.util.List;
import java.util.Map;

@Slf4j
@Service
public class UserRoleServiceImpl implements UserRoleService {

    @Autowired
    private UserRoleInfoMapper userRoleInfoMapper;

    @Override
    public PageInfo<Map<String, Object>> listUserRole(int current, int size) {
        PageHelper.offsetPage(current, size);
        List<Map<String, Object>> list = userRoleInfoMapper.listUserRole();
        PageInfo<Map<String, Object>> pageInfo = new PageInfo<>(list);
        return pageInfo;
    }

    @Override
    public void deleteUserRole(long userId) {
        userRoleInfoMapper.deleteUserRole(userId);
    }

}
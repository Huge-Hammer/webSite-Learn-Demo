package website.lhc.heron.service;

import com.github.pagehelper.PageInfo;

import java.util.List;
import java.util.Map;

public interface UserRoleService {
    PageInfo<Map<String, Object>> listUserRole(int current, int size);
    void deleteUserRole(long userId);
}



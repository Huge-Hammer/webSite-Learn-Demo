package website.lhc.heron.mapper;

import org.apache.ibatis.annotations.Param;
import website.lhc.heron.framework.mybatis.BaseMapper;
import website.lhc.heron.model.UserRoleInfo;

import java.util.List;
import java.util.Map;

public interface UserRoleInfoMapper extends BaseMapper<UserRoleInfo> {
    List<Map<String, Object>> listUserRole();

    void deleteUserRole(@Param(value = "userId") long userId);
    //void deleteUserRole(long roleId);
}

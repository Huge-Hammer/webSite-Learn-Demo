package website.lhc.heron.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Getter
@Setter
@Table(name = "user_role")
@JsonInclude(value = JsonInclude.Include.NON_NULL)
public class UserRoleInfo implements Serializable {
    /**
     * id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 角色id
     */
    @Column(name = "role_id")
    private Long roleId;

    /**
     * 用户id
     */
    @Column(name = "user_id")
    private Long userId;

    private List<RoleInfo> roleInfo;
    private List<UserInfo> userInfo;
}

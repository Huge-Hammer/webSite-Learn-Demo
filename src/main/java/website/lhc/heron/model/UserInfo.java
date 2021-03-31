package website.lhc.heron.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Getter;
import lombok.Setter;
import website.lhc.heron.util.JsonUtil;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;

/**
 * @author 582895699@qq.com
 */
@Getter
@Setter
@Table(name = "user_info")
public class UserInfo implements Serializable {
    /**
     * id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 名字
     */
    private String userName;

    /**
     * 账号
     */
    private String account;

    /**
     * 密码
     */
//    @JsonIgnore
    private String password;

    /**
     * 盐
     */
    private String salt;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @Column(name = "create_time")
    private Date createTime;

    /**
     * 修改时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @Column(name = "update_time")
    private Date updateTime;

//    /**
//     * 邮箱
//     */
//    @Column(name = "e_mail")
//    private String eMail;

    /**
     * 角色id
     */
    @Transient
    private Long roleId;

    private static final long serialVersionUID = 1L;

    /**
     * 角色名称
     */
    @Transient
    private String roleName;

    public UserInfo() {
    }

    public UserInfo(String account) {
        this.account = account;
    }

    @Override
    public String toString() {
        return JsonUtil.toJsonString(this);
    }

}

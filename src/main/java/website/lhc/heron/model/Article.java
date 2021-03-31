package website.lhc.heron.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;
import java.util.Date;

@Getter
@Setter
public class Article implements Serializable {
    /**
     * id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 文章名称
     */
    @Column(name = "article_name")
    private String articleName;

    /**
     * 创建时间
     */
    @Column(name = "create_time")
    private Date createTime;

    /**
     * 修改时间
     */
    @Column(name = "update_time")
    private Date updateTime;

    /**
     * 创建人
     */
    @Column(name = "create_by")
    private String createBy;

    /**
     * 修改人
     */
    @Column(name = "update_by")
    private String updateBy;

    /**
     * 文章类型
     */
    @Column(name = "article_type")
    private String articleType;

    /**
     * 文章封面
     */
    @Column(name = "article_cover")
    private String articleCover;

    /**
     * 文章概述
     */
    @Column(name = "article_outline")
    private String articleOutline;

    /**
     * 内容
     */
    private String content;

    private static final long serialVersionUID = 1L;
}

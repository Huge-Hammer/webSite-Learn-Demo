package website.lhc.heron.dto;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;

@Getter
@Setter
public class ArticleDto implements Serializable {


    private Long id;
    @NotBlank(message = "标题不可为空")
    private String title;
    @NotBlank(message = "内容不可为空")
    private String content;
    @NotBlank(message = "类型不可为空")
    private String type;
    @NotBlank(message = "封面不可为空")
    private String cover;
    @NotBlank(message = "概述不可为空")
    private String outline;
}

package pers.tzl.nightfall.nightfallserver.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 
 * </p>
 *
 * @author tzl
 * @since 2021-06-21
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("article_info_tab")
public class ArticleInfoTab implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 文章标题
     */
    private String title;

    /**
     * markdown格式文章内容
     */
    private String mdContent;

    /**
     * html格式文章内容
     */
    private String htmlContent;

    /**
     * 用于展示的简短内容
     */
    private String summary;

    /**
     * 作者
     */
    private String author;

    /**
     * 文章的主要类型id
     */
    private Integer mainTypeId;

    /**
     * 文章的状态：0 发布；1 草稿
     */
    private Integer state;

    /**
     * 删除标志：0 未删除；1 已删除
     */
    private Integer deleteFlag;

    /**
     * 文章阅读量
     */
    private Integer readNumber;

    /**
     * 创建时间
     */
    private LocalDateTime createTime;

    /**
     * 最后一次修改时间
     */
    private LocalDateTime lastUpdateTime;


}

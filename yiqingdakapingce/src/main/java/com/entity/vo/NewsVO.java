package com.entity.vo;

import com.entity.NewsEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 资讯信息
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 */
@TableName("news")
public class NewsVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 资讯名称
     */

    @TableField(value = "news_name")
    private String newsName;


    /**
     * 资讯图片
     */

    @TableField(value = "news_photo")
    private String newsPhoto;


    /**
     * 资讯类型
     */

    @TableField(value = "news_types")
    private Integer newsTypes;


    /**
     * 资讯发布时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "insert_time")
    private Date insertTime;


    /**
     * 资讯详情
     */

    @TableField(value = "news_content")
    private String newsContent;


    /**
     * 创建时间 show1 show2 nameShow
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：资讯名称
	 */
    public String getNewsName() {
        return newsName;
    }


    /**
	 * 获取：资讯名称
	 */

    public void setNewsName(String newsName) {
        this.newsName = newsName;
    }
    /**
	 * 设置：资讯图片
	 */
    public String getNewsPhoto() {
        return newsPhoto;
    }


    /**
	 * 获取：资讯图片
	 */

    public void setNewsPhoto(String newsPhoto) {
        this.newsPhoto = newsPhoto;
    }
    /**
	 * 设置：资讯类型
	 */
    public Integer getNewsTypes() {
        return newsTypes;
    }


    /**
	 * 获取：资讯类型
	 */

    public void setNewsTypes(Integer newsTypes) {
        this.newsTypes = newsTypes;
    }
    /**
	 * 设置：资讯发布时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 获取：资讯发布时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：资讯详情
	 */
    public String getNewsContent() {
        return newsContent;
    }


    /**
	 * 获取：资讯详情
	 */

    public void setNewsContent(String newsContent) {
        this.newsContent = newsContent;
    }
    /**
	 * 设置：创建时间 show1 show2 nameShow
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间 show1 show2 nameShow
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}

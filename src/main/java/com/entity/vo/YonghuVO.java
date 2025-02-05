package com.entity.vo;

import com.entity.YonghuEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 学生
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email
 * @date 2021-03-13
 */
@TableName("yonghu")
public class YonghuVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 账户
     */

    @TableField(value = "username")
    private String username;


    /**
     * 密码
     */

    @TableField(value = "password")
    private String password;


    /**
     * 姓名
     */

    @TableField(value = "name")
    private String name;


    /**
     * 手机号
     */

    @TableField(value = "phone")
    private String phone;


    /**
     * 身份证号
     */

    @TableField(value = "id_number")
    private String idNumber;


    /**
     * 性别
     */

    @TableField(value = "sex_types")
    private Integer sexTypes;


    /**
     * 照片
     */

    @TableField(value = "my_photo")
    private String myPhoto;


    /**
     * 民族
     */

    @TableField(value = "nation")
    private String nation;


    /**
     * 政治面貌
     */

    @TableField(value = "politics_types")
    private Integer politicsTypes;


    /**
     * 籍贯
     */

    @TableField(value = "birthplace")
    private String birthplace;


    /**
     * 是否领取过物品
     */

    @TableField(value = "wupin_types")
    private Integer wupinTypes;


    /**
     * 班级
     */

    @TableField(value = "banji_id")
    private Integer banjiId;


    /**
     * 用户状态
     */

    @TableField(value = "yonghu_types")
    private Integer yonghuTypes;


    /**
     * 创建时间
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
	 * 设置：账户
	 */
    public String getUsername() {
        return username;
    }


    /**
	 * 获取：账户
	 */

    public void setUsername(String username) {
        this.username = username;
    }
    /**
	 * 设置：密码
	 */
    public String getPassword() {
        return password;
    }


    /**
	 * 获取：密码
	 */

    public void setPassword(String password) {
        this.password = password;
    }
    /**
	 * 设置：姓名
	 */
    public String getName() {
        return name;
    }


    /**
	 * 获取：姓名
	 */

    public void setName(String name) {
        this.name = name;
    }
    /**
	 * 设置：手机号
	 */
    public String getPhone() {
        return phone;
    }


    /**
	 * 获取：手机号
	 */

    public void setPhone(String phone) {
        this.phone = phone;
    }
    /**
	 * 设置：身份证号
	 */
    public String getIdNumber() {
        return idNumber;
    }


    /**
	 * 获取：身份证号
	 */

    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber;
    }
    /**
	 * 设置：性别
	 */
    public Integer getSexTypes() {
        return sexTypes;
    }


    /**
	 * 获取：性别
	 */

    public void setSexTypes(Integer sexTypes) {
        this.sexTypes = sexTypes;
    }
    /**
	 * 设置：照片
	 */
    public String getMyPhoto() {
        return myPhoto;
    }


    /**
	 * 获取：照片
	 */

    public void setMyPhoto(String myPhoto) {
        this.myPhoto = myPhoto;
    }
    /**
	 * 设置：民族
	 */
    public String getNation() {
        return nation;
    }


    /**
	 * 获取：民族
	 */

    public void setNation(String nation) {
        this.nation = nation;
    }
    /**
	 * 设置：政治面貌
	 */
    public Integer getPoliticsTypes() {
        return politicsTypes;
    }


    /**
	 * 获取：政治面貌
	 */

    public void setPoliticsTypes(Integer politicsTypes) {
        this.politicsTypes = politicsTypes;
    }
    /**
	 * 设置：籍贯
	 */
    public String getBirthplace() {
        return birthplace;
    }


    /**
	 * 获取：籍贯
	 */

    public void setBirthplace(String birthplace) {
        this.birthplace = birthplace;
    }
    /**
	 * 设置：是否领取过物品
	 */
    public Integer getWupinTypes() {
        return wupinTypes;
    }


    /**
	 * 获取：是否领取过物品
	 */

    public void setWupinTypes(Integer wupinTypes) {
        this.wupinTypes = wupinTypes;
    }
    /**
	 * 设置：班级
	 */
    public Integer getBanjiId() {
        return banjiId;
    }


    /**
	 * 获取：班级
	 */

    public void setBanjiId(Integer banjiId) {
        this.banjiId = banjiId;
    }
    /**
	 * 设置：用户状态
	 */
    public Integer getYonghuTypes() {
        return yonghuTypes;
    }


    /**
	 * 获取：用户状态
	 */

    public void setYonghuTypes(Integer yonghuTypes) {
        this.yonghuTypes = yonghuTypes;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}

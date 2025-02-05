package com.entity.view;

import com.entity.KechengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;

/**
 * 课程
 * 后端返回视图实体辅助类
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email
 * @date 2021-03-13
 */
@TableName("kecheng")
public class KechengView extends KechengEntity implements Serializable {
    private static final long serialVersionUID = 1L;



		//级联表 laoshi
			/**
			* 账户
			*/
			private String username;
			/**
			* 密码
			*/
			private String password;
			/**
			* 老师姓名
			*/
			private String name;
			/**
			* 老师手机号
			*/
			private String phone;
			/**
			* 老师身份证号
			*/
			private String idNumber;
			/**
			* 老师性别
			*/
			private Integer sexTypes;
				/**
				* 老师性别的值
				*/
				private String sexValue;
			/**
			* 照片
			*/
			private String myPhoto;
			/**
			* 民族
			*/
			private String nation;
			/**
			* 政治面貌
			*/
			private Integer politicsTypes;
				/**
				* 政治面貌的值
				*/
				private String politicsValue;
			/**
			* 籍贯
			*/
			private String birthplace;

	public KechengView() {

	}

	public KechengView(KechengEntity kechengEntity) {
		try {
			BeanUtils.copyProperties(this, kechengEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

















				//级联表的get和set laoshi
					/**
					* 获取： 账户
					*/
					public String getUsername() {
						return username;
					}
					/**
					* 设置： 账户
					*/
					public void setUsername(String username) {
						this.username = username;
					}
					/**
					* 获取： 密码
					*/
					public String getPassword() {
						return password;
					}
					/**
					* 设置： 密码
					*/
					public void setPassword(String password) {
						this.password = password;
					}
					/**
					* 获取： 老师姓名
					*/
					public String getName() {
						return name;
					}
					/**
					* 设置： 老师姓名
					*/
					public void setName(String name) {
						this.name = name;
					}
					/**
					* 获取： 老师手机号
					*/
					public String getPhone() {
						return phone;
					}
					/**
					* 设置： 老师手机号
					*/
					public void setPhone(String phone) {
						this.phone = phone;
					}
					/**
					* 获取： 老师身份证号
					*/
					public String getIdNumber() {
						return idNumber;
					}
					/**
					* 设置： 老师身份证号
					*/
					public void setIdNumber(String idNumber) {
						this.idNumber = idNumber;
					}
					/**
					* 获取： 老师性别
					*/
					public Integer getSexTypes() {
						return sexTypes;
					}
					/**
					* 设置： 老师性别
					*/
					public void setSexTypes(Integer sexTypes) {
						this.sexTypes = sexTypes;
					}


						/**
						* 获取： 老师性别的值
						*/
						public String getSexValue() {
							return sexValue;
						}
						/**
						* 设置： 老师性别的值
						*/
						public void setSexValue(String sexValue) {
							this.sexValue = sexValue;
						}
					/**
					* 获取： 照片
					*/
					public String getMyPhoto() {
						return myPhoto;
					}
					/**
					* 设置： 照片
					*/
					public void setMyPhoto(String myPhoto) {
						this.myPhoto = myPhoto;
					}
					/**
					* 获取： 民族
					*/
					public String getNation() {
						return nation;
					}
					/**
					* 设置： 民族
					*/
					public void setNation(String nation) {
						this.nation = nation;
					}
					/**
					* 获取： 政治面貌
					*/
					public Integer getPoliticsTypes() {
						return politicsTypes;
					}
					/**
					* 设置： 政治面貌
					*/
					public void setPoliticsTypes(Integer politicsTypes) {
						this.politicsTypes = politicsTypes;
					}


						/**
						* 获取： 政治面貌的值
						*/
						public String getPoliticsValue() {
							return politicsValue;
						}
						/**
						* 设置： 政治面貌的值
						*/
						public void setPoliticsValue(String politicsValue) {
							this.politicsValue = politicsValue;
						}
					/**
					* 获取： 籍贯
					*/
					public String getBirthplace() {
						return birthplace;
					}
					/**
					* 设置： 籍贯
					*/
					public void setBirthplace(String birthplace) {
						this.birthplace = birthplace;
					}




}

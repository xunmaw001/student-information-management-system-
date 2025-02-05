package com.dao;

import com.entity.BanjiKechengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.BanjiKechengView;

/**
 * 班级_课程 Dao 接口
 *
 * @author 
 * @since 2021-03-13
 */
public interface BanjiKechengDao extends BaseMapper<BanjiKechengEntity> {

   List<BanjiKechengView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}

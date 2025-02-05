package com.service;

import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ChengjiEntity;
import java.util.Map;

/**
 * 成绩 服务类
 * @author 
 * @since 2021-03-13
 */
public interface ChengjiService extends IService<ChengjiEntity> {

    /**
    * @param params 查询参数
    * @return 带分页的查询出来的数据
    */
     PageUtils queryPage(Map<String, Object> params);

}
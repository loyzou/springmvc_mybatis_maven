package com.sufow.dao;

import java.util.List;
import java.util.Map;

import com.sufow.comm.CommParam;
import com.sufow.comm.CommResult;

public interface GoodsDao {

	/**
	 * 查询库存列表
	 * @return
	 */
	public List<Map<String,Object>> queryGoodsList(CommParam param);
	
	
	/**
	 * 查询商品操作记录列表
	 * @return
	 */
	public List<Map<String,Object>> queryGoodsRecordList(CommParam param);
	
	/***
	 * 入库
	 * @param param
	 * @return
	 */
	public CommResult addGoods(CommParam param);
	/***
	 * 更新
	 * @param param
	 * @return
	 */
	public CommResult updateGoods(CommParam param);
	
	/**
	 * 添加商品操作记录
	 * @return
	 */
	public int addGoodsRecord(CommParam param);
	
	
	/***
	 * 出库
	 * @param param
	 * @return
	 */
	public CommResult reduceGoods(CommParam param);

	/***
	 * 删除类型
	 * @param typeId
	 * @return
	 */
	public void delGoodsType(String typeId);

	/***
	 * 修改类型
	 * @param typeId
	 * @return
	 */
	public void updateGoodsType(CommParam params);


	/***
	 * 添加类型
	 * @param typeId
	 * @return
	 */
	public void addGoodsType(CommParam params);

	/**
	 * 查询类型列表
	 * @param params
	 * @return
	 */
	public List<Map<String, Object>> queryGoodsTypeList(CommParam params);


	
	
}

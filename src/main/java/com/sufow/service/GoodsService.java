package com.sufow.service;

import java.util.List;
import java.util.Map;

import com.sufow.comm.CommParam;
import com.sufow.comm.CommResult;

public interface GoodsService {
	
	/***
	 * 查询库存列表
	 * @return
	 */
	public List<Map<String,Object>> queryGoodsList(CommParam param);
	
	/***
	 * 查询商品操作列表
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
	 * 出库
	 * @param param
	 * @return
	 */
	public CommResult reduceGoods(CommParam param);
	
	public List<Map<String,Object>> queryGoodsTypeList(CommParam param);

	public void delGoodsType(String typeId);
	
	public void addGoodsType(CommParam params);

	public void updateGoodsType(CommParam CommParam);

	
}

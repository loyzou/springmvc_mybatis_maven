package com.sufow.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.sufow.comm.CommParam;
import com.sufow.comm.CommResult;
import com.sufow.dao.impl.DecadeDao;
import com.sufow.service.GoodsService;

@Service
public class GoodsServiceImpl extends DecadeDao implements GoodsService  {


	/***
	 * 入库
	 */
	public CommResult addGoods(CommParam param) {
		CommResult result = new CommResult();
		//先查询商品是否已经存在
		List<Map<String, Object>> goodsList = getGoodsDao().queryGoodsList(param);

		if(goodsList.size() >0){
			Map map = goodsList.get(0);	
			String goodsName = (String)map.get("goodsName");
			String goodsId = map.get("goodsId").toString();
			String typeId = map.get("typeId").toString();
			if(param.getAttr("goodsName").equals(goodsName)&& 
								param.getAttr("typeId").equals(typeId)){
				param.addAttr("goodsId", goodsId);
				result = getGoodsDao().updateGoods(param);
			}
		}else{
			result = getGoodsDao().addGoods(param);
		}

		//插入操作记录
		param.addAttr("operType", "入库");//入库
		getGoodsDao().addGoodsRecord(param);
		result.setSuccess(true);
		return result;
	}

	/***
	 * 出库
	 */
	public CommResult reduceGoods(CommParam params) {
		CommResult result = getGoodsDao().reduceGoods(params);
		//插入操作记录
		params.addAttr("operType", "出库");//出库
		getGoodsDao().addGoodsRecord(params);
		result.setSuccess(true);
		return result;
	}

	/***
	 * 查询库存列表
	 */
	public List<Map<String, Object>> queryGoodsList(CommParam param) {
		return getGoodsDao().queryGoodsList(param);
	}

	/***
	 * 查询商品操作记录
	 */
	public List<Map<String, Object>> queryGoodsRecordList(CommParam param) {
		return  getGoodsDao().queryGoodsRecordList(param);
	}

	/***
	 * 删除类型
	 */
	public void delGoodsType(String typeId) {
		getGoodsDao().delGoodsType(typeId);
	}

	/***
	 * 修改类型
	 */
	public void updateGoodsType(CommParam params) {
		getGoodsDao().updateGoodsType(params);		
	}

	/***
	 * 修改类型
	 */
	public void addGoodsType(CommParam params) {
		getGoodsDao().addGoodsType(params);	

	}

	/***
	 * 查询类型列表
	 */
	public List<Map<String, Object>> queryGoodsTypeList(CommParam params) {
		return getGoodsDao().queryGoodsTypeList(params);
	}



}

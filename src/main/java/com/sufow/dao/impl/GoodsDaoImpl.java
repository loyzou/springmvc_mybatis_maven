package com.sufow.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sufow.comm.CommParam;
import com.sufow.comm.CommResult;
import com.sufow.dao.GoodsDao;

@Service
public class GoodsDaoImpl implements GoodsDao {

	@Autowired
	public SqlSessionTemplate sqlSessionTemplate;


	/***
	 * 查询商品列表
	 */
	public List<Map<String, Object>> queryGoodsList(CommParam param) {
		List<Map<String, Object>> dataList = sqlSessionTemplate.selectList("GOODS.queryGoodsList",param.getAttrMap());
		return dataList;
	}

	/***
	 *入库
	 */
	public CommResult addGoods(CommParam param) {
		CommResult result = new CommResult();
		int  size = sqlSessionTemplate.insert("GOODS.addGoods",param.getAttrMap());
						
		if(size >0){
			System.out.println("添加商品成功");
		}else{
			System.out.println("添加商品失败");
		}
		return result;
	}
	
	/**
	 * 更新
	 */
	public CommResult updateGoods(CommParam param) {
		CommResult result = new CommResult();
		int  size = sqlSessionTemplate.update("GOODS.updateGoods",param.getAttrMap());
						
		if(size >0){
			System.out.println("更新库存成功");
		}else{
			System.out.println("更新库存失败");
		}
		return result;
	}


	/***
	 * 出库
	 */
	public CommResult reduceGoods(CommParam param) {
		CommResult result = new CommResult();

		int  size = sqlSessionTemplate.update("GOODS.reduceGoods",param.getAttrMap());
		if(size >0){
			System.out.println("出库成功");
		}else{
			System.out.println("出库失败");
		}
		return result;
	}

	public List<Map<String, Object>> queryGoodsRecordList(CommParam param) {
		
		List<Map<String, Object>> typeList = sqlSessionTemplate.selectList("GOODSRECORD.queryGoodsRecordList",param.getAttrMap());
		if(typeList !=null){
			System.out.println("查询记录成功");
		}
		return typeList;
		
	}

	/***
	 * 删除类型
	 */
	public void delGoodsType(String typeId) {

		int  size = sqlSessionTemplate.update("GOODSTYPE.delGoodsType", Integer.parseInt(typeId));
		if(size >0){
			System.out.println("删除类型成功");
		}else{
			System.out.println("删除类型失败");
		}
		
	}

	/***
	 *修改类型
	 */
	public void updateGoodsType(CommParam params) {
		
		int  size = sqlSessionTemplate.update("GOODSTYPE.updateGoodsType",params.getAttrMap());
		if(size >0){
			System.out.println("修改类型成功");
		}else{
			System.out.println("修改类型失败");
		}
		
	}

	/***
	 *添加类型
	 */
	public void addGoodsType(CommParam params) {
		int  size = sqlSessionTemplate.insert("GOODSTYPE.addGoodsType",params.getAttrMap());
		if(size >0){
			System.out.println("添加类型成功");
		}else{
			System.out.println("添加类型失败");
		}
	}

	public int addGoodsRecord(CommParam param) {
		int  size = sqlSessionTemplate.insert("GOODSRECORD.addGoodsRecord",param.getAttrMap());
		if(size >0){
			System.out.println("添加商品记录成功");
		}else{
			System.out.println("添加商品记录失败");
		}
		return size;
	}

	/***
	 * 查询类型列表
	 */
	public List<Map<String, Object>> queryGoodsTypeList(CommParam params) {
		List<Map<String, Object>> typeList = sqlSessionTemplate.selectList("GOODSTYPE.queryGoodsTypeList");
		return typeList;
	}



}

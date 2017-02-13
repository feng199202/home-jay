package com.tarena.netctoss.dao;

import java.util.List;

import com.tarena.netctoss.entity.Right;
import com.tarena.netctoss.util.Page;

public interface IRightDao {
	/**
	 * 增加权限
	 * 
	 * @param right
	 * @return
	 */
	int addRight(Right right);

	/**
	 * 删除权限
	 */

	int deleteRightById(Right right);

	/**
	 * 修改权限信息
	 */
	int updateRightById(Right right);

	/**
	 * 列出权限
	 * 
	 * @param riht
	 * @param page
	 * @return
	 */
	List<Right> listRights(Right right, Page page);

	/**
	 * 算出符合传入right 字段条件的的行数
	 * 
	 * @param right
	 * @return
	 */
	long countRows(Right right);

	/**
	 * 根据ID 查找相应的right
	 */
	Right findRightById(Right right);
	
	/**
	 *根据权限名查找权限 
	 */
	Right findRightByName(Right right);
	
}

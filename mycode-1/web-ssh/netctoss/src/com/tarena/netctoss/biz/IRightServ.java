package com.tarena.netctoss.biz;

import java.util.List;

import com.tarena.netctoss.entity.Right;
import com.tarena.netctoss.util.Page;

public interface IRightServ {
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
	 * 根据ID 查找相应的right
	 */
	Right findRightById(Right right);
	/**
	 *  根据name 查找相应的right
	 * @param right
	 * @return
	 */
	Right findRightByName(Right right);
}

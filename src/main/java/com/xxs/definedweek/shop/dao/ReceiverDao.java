/*



 */
package com.xxs.definedweek.dao;

import com.xxs.definedweek.Page;
import com.xxs.definedweek.Pageable;
import com.xxs.definedweek.entity.Member;
import com.xxs.definedweek.entity.Receiver;

/**
 * Dao - 收货地址
 * 


 */
public interface ReceiverDao extends BaseDao<Receiver, Long> {

	/**
	 * 查找默认收货地址
	 * 
	 * @param member
	 *            会员
	 * @return 默认收货地址，若不存在则返回最新收货地址
	 */
	Receiver findDefault(Member member);

	/**
	 * 查找收货地址分页
	 * 
	 * @param member
	 *            会员
	 * @param pageable
	 *            分页信息
	 * @return 收货地址分页
	 */
	Page<Receiver> findPage(Member member, Pageable pageable);

}
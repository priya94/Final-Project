package com.niit.shoppingcart.dao;

import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.Cart;

@Repository("cartDAO")
public class CartDAOImpl implements CartDAO {
	
	
	
	@Autowired
	private SessionFactory sessionFactory;
	public CartDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	 @Transactional
		public void saveOrUpdate(Cart cart)
		{
			
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
			
		}
	
	@Transactional
	public List<Cart> list() {
		
		@SuppressWarnings({ "deprecation", "unchecked" })
		List<Cart> list = sessionFactory.getCurrentSession().createCriteria(Cart.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return list;
	}
	
	@SuppressWarnings({ "deprecation", "unchecked" })
	@Transactional
	public Cart get(int id)
	{
		
		String hql = "from Cart where id=" + "'" + id + "'  and status = " + "'A'";
		Query<Cart> query= sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
        List<Cart> listCart = query.getResultList();

		if (listCart != null && !listCart.isEmpty()) {
			return listCart.get(0);
		}
		
		return null;
	}
	
   
	
	@Transactional
	public String delete(int id) {
		Cart cart = new Cart();
		cart.setId(id);
		try
		{
			sessionFactory.getCurrentSession().delete(cart);
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return e.getMessage();
		}
		return null;
	}
	
	
	
	@Transactional
	public List<Cart> listCart(String uID) {
		String hql = "from Cart where USER_ID=" + "'" + uID + "'  and status = " + "'A'";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();

		return list;
	}
	
	@SuppressWarnings({ "deprecation", "unchecked" })
	@Transactional
	public Cart getByUserId(String uID) {
		String hql = "from Cart where USER_ID = '" + uID + "' and status = 'A'";
		Query<Cart> query = sessionFactory.getCurrentSession().createQuery(hql);
		
		
		List<Cart> list = query.getResultList();
		
		if(list!=null && !list.isEmpty()) {
			
			return list.get(0);
		}
		return null;
	}

	@Transactional
	public long getTotal(String id) {
		String hql="select sum(price) from Cart where USER_ID=" + "'" + id + "'  and status = 'A'";
		Query<Cart> query= sessionFactory.getCurrentSession().createQuery(hql);
		List list = (List) query.getResultList();
		long total = (Long) list.get(0); 
		
		if(list!=null && !list.isEmpty())
		{
			return total;
		}
		System.out.println("**********"+list.get(0));
		return 0;
	}

	
	@Transactional
	public void checkOut(String uID) {
		String hql = "update Cart set status = 'A' where USER_ID ='" + uID + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.executeUpdate();
	}

	

	
	

}
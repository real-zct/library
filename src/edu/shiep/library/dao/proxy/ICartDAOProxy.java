package edu.shiep.library.dao.proxy;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import edu.shiep.library.dao.ICartDAO;
import edu.shiep.library.dao.impl.CartDAOImpl;
import edu.shiep.library.dbc.DatabaseConnection;
import edu.shiep.library.vo.Cart;

public class ICartDAOProxy implements ICartDAO{
	private DatabaseConnection dbc=null;
	private ICartDAO dao=null;
	public ICartDAOProxy() throws Exception{
		this.dbc=new DatabaseConnection();
		this.dao=new CartDAOImpl(this.dbc.getConnection());
	}
	public List<Cart> findCart(int mid)throws Exception{
		List<Cart> all=null;
		try {
			all=this.dao.findCart(mid);
		}catch(Exception e){
			throw e;
		}finally {
			this.dbc.close();
		}
		return all;
	}
	public boolean doCreate(Cart cart) throws Exception{
    	boolean flag=false;
    	try {
    		if(this.dao.findByld(cart.getPno(),cart.getMid())==null) {
    			flag=this.dao.doCreate(cart);
    		}else {
    			flag=this.dao.update(cart);
    		}
    	}catch(Exception e) {
    		throw e;
    	}finally {
    		this.dbc.close();
    	}
    	return flag;
    }
	public boolean update(Cart cart) throws Exception{
		boolean flag=false;
		try {
			if(this.dao.findByld(cart.getPno(),cart.getMid())!=null) {
				flag=this.dao.update(cart);
			}
		}catch(Exception e) {
			throw e;
		}finally {
			this.dbc.close();
		}
		return flag;
		
	}
	public boolean delete(Cart cart) throws Exception{
		boolean flag=false;
		try {
			if(this.dao.findByld(cart.getPno(),cart.getMid())!=null) {
				flag=this.dao.delete(cart);
			}
		}catch(Exception e) {
			throw e;
		}finally {
			this.dbc.close();
		}
		return flag;
		
	}
	public Cart findByld(int pno,int mid)throws Exception{
		Cart cart=null;
		try {
			cart=this.dao.findByld(pno,mid);
		}catch(Exception e ){
			throw e;
		}finally {
			this.dbc.close();
		}
		return cart;
	}
	
}

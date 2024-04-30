package edu.shiep.library.dao.proxy;

import java.util.List;
import edu.shiep.library.dao.impl.OrderedDAOImpl;
import edu.shiep.library.dbc.DatabaseConnection;
import edu.shiep.library.vo.Ordered;
import edu.shiep.library.dao.IOrderedDAO;

public class OrderedDAOProxy implements IOrderedDAO{
	private DatabaseConnection dbc=null;
	private IOrderedDAO dao=null;
	public OrderedDAOProxy() throws Exception{
		this.dbc=new DatabaseConnection();
		this.dao=new OrderedDAOImpl(this.dbc.getConnection());
	}
	public boolean doCreate(Ordered ordered) throws Exception{
    	boolean flag=false;
    	try {
    		if(this.dao.findByld(ordered.getOno())==null) {
    			flag=this.dao.doCreate(ordered);
    		}
    	}catch(Exception e) {
    		throw e;
    	}finally {
    		this.dbc.close();
    	}
    	return flag;
    }
	public List<Ordered> findAll(int mid)throws Exception{
		List<Ordered> all=null;
		try {
			all=this.dao.findAll(mid);
		}catch(Exception e){
			throw e;
		}finally {
			this.dbc.close();
		}
		return all;
	}
	public Ordered findByld(int ono)throws Exception{
		Ordered ordered=null;
		try {
			ordered=this.dao.findByld(ono);
		}catch(Exception e ){
			throw e;
		}finally {
			this.dbc.close();
		}
		return ordered;
	}

}

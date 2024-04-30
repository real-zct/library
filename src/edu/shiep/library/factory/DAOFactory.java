package edu.shiep.library.factory;
import edu.shiep.library.dao.*;
import edu.shiep.library.dao.proxy.*;
public class DAOFactory {
	public static IProductDAO getIProductDAOInstance() throws Exception{
		return new IProductDAOProxy();
	}
	public static ICartDAO getICartDAOInstance()throws Exception{
		return new ICartDAOProxy();
	}
	public static IClassifyDAO getIClassifyDAOInstance()throws Exception{
		return new IClassifyDAOProxy();
	}
	public static IMemberDAO getIMemberDAOInstance() throws Exception{
    	return new MemberDAOProxy();
    }
	public static IOrderedDAO getIOrderedDAOInstance() throws Exception{
    	return new OrderedDAOProxy();
    }
}

package edu.shiep.library.dao.proxy;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import edu.shiep.library.dao.IClassifyDAO;
import edu.shiep.library.dao.impl.ClassifyDAOImpl;
import edu.shiep.library.dbc.DatabaseConnection;
import edu.shiep.library.vo.Classify;
import edu.shiep.library.vo.Product;

public class IClassifyDAOProxy implements IClassifyDAO{
	private DatabaseConnection dbc=null;
	private IClassifyDAO dao=null;
	public IClassifyDAOProxy() throws Exception{
		this.dbc=new DatabaseConnection();
		this.dao=new ClassifyDAOImpl(this.dbc.getConnection());
	}
	public List<Classify> findClassify(int cno)throws Exception{
		List<Classify> all=null;
		try {
			all=this.dao.findClassify(cno);
		}catch(Exception e){
			throw e;
		}finally {
			this.dbc.close();
		}
		return all;
	}
	public List<Classify> pager(int cno,int pageNo,int pageSize)throws Exception{
		List<Classify> all=null;
		try {
			all=this.dao.pager(cno,pageNo,pageSize);
		}catch(Exception e){
			throw e;
		}finally {
			this.dbc.close();
		}
		return all;
	}
}

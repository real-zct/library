package edu.shiep.library.dao.proxy;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import edu.shiep.library.dao.IProductDAO;
import edu.shiep.library.dao.impl.ProductDAOImpl;
import edu.shiep.library.dbc.DatabaseConnection;
import edu.shiep.library.vo.Product;

public class IProductDAOProxy implements IProductDAO{
	private DatabaseConnection dbc=null;
	private IProductDAO dao=null;
	public IProductDAOProxy() throws Exception{
		this.dbc=new DatabaseConnection();
		this.dao=new ProductDAOImpl(this.dbc.getConnection());
	}
	public List<Product> findAll(String keyword)throws Exception{
		List<Product> all=null;
		try {
			all=this.dao.findAll(keyword);
		}catch(Exception e){
			throw e;
		}finally {
			this.dbc.close();
		}
		return all;
	}
	public List<Product> pager(String keyword,int pageNo,int pageSize)throws Exception{
		List<Product> all=null;
		try {
			all=this.dao.pager(keyword,pageNo,pageSize);
		}catch(Exception e){
			throw e;
		}finally {
			this.dbc.close();
		}
		return all;
	}
	public Product findByld(int pno)throws Exception{
		Product all=null;
		try {
			all=this.dao.findByld(pno);
		}catch(Exception e){
			throw e;
		}finally {
			this.dbc.close();
		}
		return all;
	}
	public List<Product> pagerPriceDesc(String keyword,int pageNo,int pageSize) throws Exception{
		List<Product> all=null;
		try {
			all=this.dao.pagerPriceDesc(keyword,pageNo,pageSize);
		}catch(Exception e){
			throw e;
		}finally {
			this.dbc.close();
		}
		return all;
	}
	public List<Product> pagerPriceAsc(String keyword,int pageNo,int pageSize) throws Exception{
		List<Product> all=null;
		try {
			all=this.dao.pagerPriceAsc(keyword,pageNo,pageSize);
		}catch(Exception e){
			throw e;
		}finally {
			this.dbc.close();
		}
		return all;
	}
	public List<Product> pagerSalesDesc(String keyword,int pageNo,int pageSize) throws Exception{
		List<Product> all=null;
		try {
			all=this.dao.pagerSalesDesc(keyword,pageNo,pageSize);
		}catch(Exception e){
			throw e;
		}finally {
			this.dbc.close();
		}
		return all;
	}
	public List<Product> pagerSalesAsc(String keyword,int pageNo,int pageSize) throws Exception{
		List<Product> all=null;
		try {
			all=this.dao.pagerSalesAsc(keyword,pageNo,pageSize);
		}catch(Exception e){
			throw e;
		}finally {
			this.dbc.close();
		}
		return all;
	}
	public List<Product> pagerAmountLow(String keyword,int pageNo,int pageSize) throws Exception{
		List<Product> all=null;
		try {
			all=this.dao.pagerAmountLow(keyword,pageNo,pageSize);
		}catch(Exception e){
			throw e;
		}finally {
			this.dbc.close();
		}
		return all;
	}
}

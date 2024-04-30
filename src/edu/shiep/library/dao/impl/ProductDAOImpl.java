package edu.shiep.library.dao.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;




import edu.shiep.library.dao.IProductDAO;
import edu.shiep.library.vo.Product;
public class ProductDAOImpl implements IProductDAO{
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	public ProductDAOImpl(Connection conn) {
		this.conn=conn;
	}
	public List<Product> findAll(String keyword)throws Exception{	
		List<Product> all=new ArrayList<Product>();
		String sql="SELECT pname,pprice,pamount,pnote,psales,pno FROM product WHERE pname LIKE ?";
		this.pstmt=this.conn.prepareStatement(sql);
		this.pstmt.setString(1,"%"+keyword+"%");
		ResultSet rs=this.pstmt.executeQuery();
		Product product=null;
		while (rs.next()) {
			product=new Product();
			product.setPno(rs.getInt(6));
			product.setPname(rs.getString(1));
			product.setPprice(rs.getFloat(2));
			product.setPamount(rs.getInt(3));
			product.setPnote(rs.getString(4));
			product.setPsales(rs.getInt(5));
			all.add(product);
		}
		this.pstmt.close();
		return all;
	}
	public Product findByld(int pno)throws Exception{	
		String sql="SELECT pno,pname,pprice,pamount,pnote,psales FROM product WHERE pno=?";
		this.pstmt=this.conn.prepareStatement(sql);
		this.pstmt.setInt(1,pno);
		ResultSet rs=this.pstmt.executeQuery();
		Product product=null;
		if(rs.next()){
			product=new Product();
			product.setPno(rs.getInt(1));
			product.setPname(rs.getString(2));
			product.setPprice(rs.getFloat(3));
			product.setPamount(rs.getInt(4));
			product.setPnote(rs.getString(5));
			product.setPsales(rs.getInt(6));		
		}
		this.pstmt.close();
		return product;
	}
	public List<Product> pager(String keyword,int pageNo,int pageSize)throws Exception{	
		List<Product> all=new ArrayList<Product>();
		String sql="SELECT pname,pprice,pamount,pnote,psales,pno FROM product WHERE pname LIKE ? LIMIT ?,?";
		this.pstmt=this.conn.prepareStatement(sql);
		this.pstmt.setString(1,"%"+keyword+"%");
		int pagePoint=(pageNo-1)*pageSize;
		this.pstmt.setInt(2,pagePoint);
		this.pstmt.setInt(3,pageSize);
		ResultSet rs=this.pstmt.executeQuery();
		Product product=null;
		while (rs.next()) {
			product=new Product();
			product.setPno(rs.getInt(6));
			product.setPname(rs.getString(1));
			product.setPprice(rs.getFloat(2));
			product.setPamount(rs.getInt(3));
			product.setPnote(rs.getString(4));
			product.setPsales(rs.getInt(5));
			all.add(product);
		}
		this.pstmt.close();
		return all;
	}
	public List<Product> pagerPriceDesc(String keyword,int pageNo,int pageSize) throws Exception{	
		List<Product> all=new ArrayList<Product>();
		String sql="SELECT pname,pprice,pamount,pnote,psales,pno FROM product  WHERE pname LIKE ? ORDER BY pprice  DESC LIMIT ?,?";
		this.pstmt=this.conn.prepareStatement(sql);
		this.pstmt.setString(1,"%"+keyword+"%");
		int pagePoint=(pageNo-1)*pageSize;
		this.pstmt.setInt(2,pagePoint);
		this.pstmt.setInt(3,pageSize);
		ResultSet rs=this.pstmt.executeQuery();
		Product product=null;
		while (rs.next()) {
			product=new Product();
			product.setPno(rs.getInt(6));
			product.setPname(rs.getString(1));
			product.setPprice(rs.getFloat(2));
			product.setPamount(rs.getInt(3));
			product.setPnote(rs.getString(4));
			product.setPsales(rs.getInt(5));
			all.add(product);
		}
		this.pstmt.close();
		return all;
	}
	public List<Product> pagerPriceAsc(String keyword,int pageNo,int pageSize) throws Exception{	
		List<Product> all=new ArrayList<Product>();
		String sql="SELECT pname,pprice,pamount,pnote,psales,pno FROM product  WHERE pname LIKE ? ORDER BY pprice  ASC LIMIT ?,?";
		this.pstmt=this.conn.prepareStatement(sql);
		this.pstmt.setString(1,"%"+keyword+"%");
		int pagePoint=(pageNo-1)*pageSize;
		this.pstmt.setInt(2,pagePoint);
		this.pstmt.setInt(3,pageSize);
		ResultSet rs=this.pstmt.executeQuery();
		Product product=null;
		while (rs.next()) {
			product=new Product();
			product.setPno(rs.getInt(6));
			product.setPname(rs.getString(1));
			product.setPprice(rs.getFloat(2));
			product.setPamount(rs.getInt(3));
			product.setPnote(rs.getString(4));
			product.setPsales(rs.getInt(5));
			all.add(product);
		}
		this.pstmt.close();
		return all;
	}
	public List<Product> pagerSalesDesc(String keyword,int pageNo,int pageSize) throws Exception{	
		List<Product> all=new ArrayList<Product>();
		String sql="SELECT pname,pprice,pamount,pnote,psales,pno FROM product  WHERE pname LIKE ? ORDER BY  psales DESC LIMIT ?,?";
		this.pstmt=this.conn.prepareStatement(sql);
		this.pstmt.setString(1,"%"+keyword+"%");
		int pagePoint=(pageNo-1)*pageSize;
		this.pstmt.setInt(2,pagePoint);
		this.pstmt.setInt(3,pageSize);
		ResultSet rs=this.pstmt.executeQuery();
		Product product=null;
		while (rs.next()) {
			product=new Product();
			product.setPno(rs.getInt(6));
			product.setPname(rs.getString(1));
			product.setPprice(rs.getFloat(2));
			product.setPamount(rs.getInt(3));
			product.setPnote(rs.getString(4));
			product.setPsales(rs.getInt(5));
			all.add(product);
		}
		this.pstmt.close();
		return all;
	}
	public List<Product> pagerSalesAsc(String keyword,int pageNo,int pageSize) throws Exception{	
		List<Product> all=new ArrayList<Product>();
		String sql="SELECT pname,pprice,pamount,pnote,psales,pno FROM product  WHERE pname LIKE ? ORDER BY  psales ASC LIMIT ?,?";
		this.pstmt=this.conn.prepareStatement(sql);
		this.pstmt.setString(1,"%"+keyword+"%");
		int pagePoint=(pageNo-1)*pageSize;
		this.pstmt.setInt(2,pagePoint);
		this.pstmt.setInt(3,pageSize);
		ResultSet rs=this.pstmt.executeQuery();
		Product product=null;
		while (rs.next()) {
			product=new Product();
			product.setPno(rs.getInt(6));
			product.setPname(rs.getString(1));
			product.setPprice(rs.getFloat(2));
			product.setPamount(rs.getInt(3));
			product.setPnote(rs.getString(4));
			product.setPsales(rs.getInt(5));
			all.add(product);
		}
		this.pstmt.close();
		return all;
	}
	public List<Product> pagerAmountLow(String keyword,int pageNo,int pageSize) throws Exception{	
		List<Product> all=new ArrayList<Product>();
		String sql="SELECT pname,pprice,pamount,pnote,psales,pno FROM product WHERE pname LIKE ? AND pamount<100 LIMIT ?,?";
		this.pstmt=this.conn.prepareStatement(sql);
		this.pstmt.setString(1,"%"+keyword+"%");
		int pagePoint=(pageNo-1)*pageSize;
		this.pstmt.setInt(2,pagePoint);
		this.pstmt.setInt(3,pageSize);
		ResultSet rs=this.pstmt.executeQuery();
		Product product=null;
		while (rs.next()) {
			product=new Product();
			product.setPno(rs.getInt(6));
			product.setPname(rs.getString(1));
			product.setPprice(rs.getFloat(2));
			product.setPamount(rs.getInt(3));
			product.setPnote(rs.getString(4));
			product.setPsales(rs.getInt(5));
			all.add(product);
		}
		this.pstmt.close();
		return all;
	}
	

}

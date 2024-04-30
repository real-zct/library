package edu.shiep.library.dao.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import edu.shiep.library.dao.ICartDAO;
import edu.shiep.library.vo.Cart;

public class CartDAOImpl implements ICartDAO{
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	public CartDAOImpl(Connection conn) {
		this.conn=conn;
	}
	public List<Cart> findCart(int mid)throws Exception{	//没毛病
		List<Cart> all=new ArrayList<Cart>();
		String sql="SELECT mid,pno,ccount,pname,pprice,totalprice FROM cart WHERE mid = ?";
		this.pstmt=this.conn.prepareStatement(sql);
		this.pstmt.setInt(1,mid);
		ResultSet rs=this.pstmt.executeQuery();
		Cart cart=null;
		while (rs.next()) {
			cart=new Cart();
			cart.setMid(rs.getInt(1));
			cart.setPno(rs.getInt(2));
			cart.setCcount(rs.getInt(3));
			cart.setPname(rs.getString(4));
			cart.setPprice(rs.getFloat(5));
			cart.setTotalprice(rs.getFloat(6));
			all.add(cart);
		}
		this.pstmt.close();
		return all;
	}
	public boolean doCreate(Cart cart)throws Exception{
		boolean flag=false;
		String sql="INSERT INTO cart (mid,pno,ccount,pname,pprice,totalprice)VALUES(?,?,?,?,?,?)";
		this.pstmt=this.conn.prepareStatement(sql);
		this.pstmt.setInt(1, cart.getMid());
		this.pstmt.setInt(2, cart.getPno());
		this.pstmt.setInt(3, cart.getCcount());
		this.pstmt.setString(4,cart.getPname());
		this.pstmt.setFloat(5, cart.getPprice());
		this.pstmt.setFloat(6, cart.getTotalprice());
		if(this.pstmt.executeUpdate()>0) {
			flag=true;
		}
		this.pstmt.close();
		return flag;
	}
	public boolean update(Cart cart)throws Exception{
		boolean flag=false;
		String sql="UPDATE cart SET ccount=?,totalprice=? WHERE pno=? AND mid=?";
		this.pstmt=this.conn.prepareStatement(sql);
		this.pstmt.setInt(1,cart.getCcount());
		this.pstmt.setFloat(2, cart.getTotalprice());
		this.pstmt.setInt(3, cart.getPno());
		this.pstmt.setInt(4, cart.getMid());
    	if(this.pstmt.executeUpdate()>0) {
    		flag=true;
    	}
    	this.pstmt.close();
    	return flag;
	}
	public boolean delete(Cart cart)throws Exception{
		boolean flag = false;
		String sql="DELETE FROM cart WHERE pno=? AND mid=?";
		this.pstmt=this.conn.prepareStatement(sql);
		this.pstmt.setInt(1, cart.getPno());
		this.pstmt.setInt(2, cart.getMid());
		if(this.pstmt.executeUpdate()>0) {
			flag=true;
		}
		return flag;
	}
	public Cart findByld(int pno,int mid)throws Exception{
		Cart cart=null;
		String sql="SELECT mid,pno,ccount,pname,pprice,totalprice FROM cart WHERE pno=? AND mid=?";
		this.pstmt=this.conn.prepareStatement(sql);
		this.pstmt.setInt(1,pno);
		this.pstmt.setInt(2, mid);
		ResultSet rs=this.pstmt.executeQuery();
		if(rs.next()) {
			cart=new Cart();
			cart.setMid(rs.getInt(1));
			cart.setPno(rs.getInt(2));
			cart.setCcount(rs.getInt(3));
			cart.setPname(rs.getString(4));
			cart.setPprice(rs.getFloat(5));
			cart.setTotalprice(rs.getFloat(6));
		}
		this.pstmt.close();
		return cart;
	}

}

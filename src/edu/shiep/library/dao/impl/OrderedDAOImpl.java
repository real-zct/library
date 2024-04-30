package edu.shiep.library.dao.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import edu.shiep.library.vo.*;
import edu.shiep.library.dao.IOrderedDAO;
public class OrderedDAOImpl implements IOrderedDAO{
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	public OrderedDAOImpl(Connection conn) {
		this.conn=conn;
	} 
	public boolean doCreate(Ordered ordered) throws Exception{
    	boolean flag=false;
    	String sql="INSERT INTO ordered(mid,pno,ono,ototal,odate,opeople,ocount,otel) VALUES(?,?,?,?,?,?,?,?)";
    	this.pstmt=this.conn.prepareStatement(sql);
    	this.pstmt.setInt(1,ordered.getMid());
    	this.pstmt.setInt(2,ordered.getPno());
    	this.pstmt.setInt(3,ordered.getOno());
    	this.pstmt.setFloat(4,ordered.getOtotal());
    	this.pstmt.setDate(5,new java.sql.Date(ordered.getOdate().getTime()));
    	this.pstmt.setString(6,ordered.getOpeople());
    	this.pstmt.setInt(7,ordered.getOcount());
    	this.pstmt.setString(8,ordered.getOtel());
    	if(this.pstmt.executeUpdate()>0){
    		flag=true;
    	}
    	this.pstmt.close();
    	return flag;
    }
	public List<Ordered> findAll(int mid)throws Exception{
		List<Ordered> all=new ArrayList<Ordered>();
		String sql="SELECT mid,pno,ono,ototal,odate,opeople,ocount,otel FROM ordered WHERE mid = ? ";
		this.pstmt=this.conn.prepareStatement(sql);
		this.pstmt.setInt(1,mid);
		ResultSet rs=this.pstmt.executeQuery();
		Ordered ordered=null;
		while (rs.next()) {
			ordered=new Ordered();
			ordered.setMid(rs.getInt(1));
			ordered.setPno(rs.getInt(2));
			ordered.setOno(rs.getInt(3));
			ordered.setOtotal(rs.getFloat(4));
			ordered.setOdate(rs.getDate(5));
			ordered.setOpeople(rs.getString(6));
			ordered.setOcount(rs.getInt(7));
			ordered.setOtel(rs.getString(8));
			all.add(ordered);
		}
		this.pstmt.close();
		return all;
	}
	public Ordered findByld(int ono)throws Exception{
		Ordered ordered=null;
		String sql="SELECT mid,pno,ono,ototal,odate,opeople,ocount,otel FROM ordered WHERE ono=?";
		this.pstmt=this.conn.prepareStatement(sql);
		this.pstmt.setInt(1,ono);
		ResultSet rs=this.pstmt.executeQuery();
		if(rs.next()) {
			ordered=new Ordered();
			ordered.setMid(rs.getInt(1));
			ordered.setPno(rs.getInt(2));
			ordered.setOno(rs.getInt(3));
			ordered.setOtotal(rs.getFloat(4));
			ordered.setOdate(rs.getDate(5));
			ordered.setOpeople(rs.getString(6));
			ordered.setOcount(rs.getInt(7));
			ordered.setOtel(rs.getString(8));
		}		
		this.pstmt.close();
		return ordered;
	}
	
}

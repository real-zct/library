package edu.shiep.library.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import edu.shiep.library.dao.IMemberDAO;
import edu.shiep.library.vo.Member;



public class MemberDAOImpl implements IMemberDAO{
    private Connection conn=null;
    private PreparedStatement pstmt=null;
    public MemberDAOImpl(Connection conn){
    	this.conn=conn;
    }
    public boolean findLogin(Member member) throws Exception{
    	boolean flag=false;
    	try{
    		String sql="SELECT mid from member WHERE mid=? AND mpassword=?";
    		this.pstmt = this.conn.prepareStatement(sql);
    		this.pstmt.setInt(1,member.getMid());
    		this.pstmt.setString(2,member.getMpassword());
    		ResultSet rs=this.pstmt.executeQuery();
    		if (rs.next()){
    			member.setMid(rs.getInt(1));
    			flag=true;
    		}
    	}catch(Exception e){
    		throw e;
    	}finally{
    		if(this.pstmt!=null){
    			try{
    				this.pstmt.close();
    			}catch(Exception e){
    				throw e;
    			}
    		}
    	}
    	return flag;
    }
    public boolean MCreate(Member member) throws Exception{
    	boolean flag=false;
    	String sql="INSERT INTO member(mid,mname,mpassword,mtele,memail) values(?,?,?,?,?)";
    	try{
    		this.pstmt = this.conn.prepareStatement(sql);
    	    this.pstmt.setInt(1,member.getMid());
    	    this.pstmt.setString(2,member.getMname());
    	    this.pstmt.setString(3,member.getMpassword());
    	    this.pstmt.setString(4,member.getMtele());
    	    this.pstmt.setString(5,member.getMemail());
    	    if (this.pstmt.executeUpdate() > 0) {
    			flag = true;
    		}
    	}catch(Exception e){
    		throw e;
    	}finally{
    		if(this.pstmt!=null){
    			try{
    				this.pstmt.close();
    			}catch(Exception e){
    				throw e;
    			}
    		}
    	}
    	return flag;
    }
    public Member MShow(int mid) throws Exception{
    	Member member=null;
    	String sql="SELECT mid,mname,mpassword,memail,mtele from member WHERE mid=?";
    	this.pstmt=this.conn.prepareStatement(sql);
    	this.pstmt.setInt(1,mid);
    	ResultSet rs=this.pstmt.executeQuery();
    	if(rs.next()){
    		member=new Member();
    		member.setMid(rs.getInt(1));
    		member.setMname(rs.getString(2));
    		member.setMpassword(rs.getString(3));
    		member.setMemail(rs.getString(4));
    		member.setMtele(rs.getString(5));
    	}
    	this.pstmt.close();
    	return member;
    }
    public boolean MUpdate(Member member) throws Exception{
    	boolean flag=false;
    	String sql="UPDATE member SET mname=?,mpassword=?,mtele=?,memail=? WHERE mid=?";
    	try{
    		this.pstmt = this.conn.prepareStatement(sql);
    	    this.pstmt.setString(1,member.getMname());
    	    this.pstmt.setString(2,member.getMpassword());
    	    this.pstmt.setString(3,member.getMtele());
    	    this.pstmt.setString(4,member.getMemail());
    	    this.pstmt.setInt(5,member.getMid());
    	    if (this.pstmt.executeUpdate() > 0) {
    			flag = true;
    		}
    	}catch(Exception e){
    		throw e;
    	}finally{
    		if(this.pstmt!=null){
    			try{
    				this.pstmt.close();
    			}catch(Exception e){
    				throw e;
    			}
    		}
    	}
    	return flag;
    }
	public Member findById(int mid) throws Exception{
    	Member member=null;
    	try{
    		String sql="SELECT * from member WHERE mid=?";
    		this.pstmt = this.conn.prepareStatement(sql);
    	    this.pstmt.setInt(1,mid);
    		ResultSet rs=this.pstmt.executeQuery();
    		if (rs.next()){
    			member=new Member();
    			member.setMid(rs.getInt(1));
        		member.setMname(rs.getString(2));
        		member.setMpassword(rs.getString(3));
        		member.setMtele(rs.getString(4));
        		member.setMemail(rs.getString(5));
    		}
    	}catch(Exception e){
    		throw e;
    	}finally{
    		if(this.pstmt!=null){
    			try{
    				this.pstmt.close();
    			}catch(Exception e){
    				throw e;
    			}
    		}
    	}
    	return member;
    }
}

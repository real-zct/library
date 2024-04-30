package edu.shiep.library.dao.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import edu.shiep.library.dao.IClassifyDAO;
import edu.shiep.library.vo.Classify;
import edu.shiep.library.vo.Product;
public class ClassifyDAOImpl implements IClassifyDAO{
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	public ClassifyDAOImpl(Connection conn) {
		this.conn=conn;
	}
	public List<Classify> findClassify(int cno)throws Exception{	//没毛病
		List<Classify> all=new ArrayList<Classify>();
		String sql="SELECT cname,pno,cno FROM productpclassify WHERE cno = ?";
		this.pstmt=this.conn.prepareStatement(sql);
		this.pstmt.setInt(1,cno);
		ResultSet rs=this.pstmt.executeQuery();
		Classify classify=null;
		while (rs.next()) {
			classify=new Classify();
			classify.setCname(rs.getString(1));
			classify.setPno(rs.getInt(2));
			classify.setCno(rs.getInt(3));
			all.add(classify);
		}
		this.pstmt.close();
		return all;
	}
	public List<Classify> pager(int cno,int pageNo,int pageSize)throws Exception{	//没毛病
		List<Classify> all=new ArrayList<Classify>();
		String sql="SELECT cname,pno,cno FROM productpclassify WHERE cno = ? LIMIT ?,?";
		this.pstmt=this.conn.prepareStatement(sql);
		this.pstmt.setInt(1,cno);
		int pagePoint=(pageNo-1)*pageSize;
		this.pstmt.setInt(2,pagePoint);
		this.pstmt.setInt(3,pageSize);
		ResultSet rs=this.pstmt.executeQuery();
		Classify classify=null;
		while (rs.next()) {
			classify=new Classify();
			classify.setCname(rs.getString(1));
			classify.setPno(rs.getInt(2));
			classify.setCno(rs.getInt(3));
			all.add(classify);
		}
		this.pstmt.close();
		return all;
	}

}

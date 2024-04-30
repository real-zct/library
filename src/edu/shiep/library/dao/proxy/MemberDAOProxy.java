package edu.shiep.library.dao.proxy;

import edu.shiep.library.dao.IMemberDAO;
import edu.shiep.library.dao.impl.MemberDAOImpl;
import edu.shiep.library.dbc.DatabaseConnection;
import edu.shiep.library.vo.Member;



public class MemberDAOProxy implements IMemberDAO{
    private DatabaseConnection dbc=null;
    private IMemberDAO dao=null;
    public MemberDAOProxy(){
    	try{
    		this.dbc=new DatabaseConnection();
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    	this.dao=new MemberDAOImpl(this.dbc.getConnection());
    }
    public boolean findLogin(Member member) throws Exception{
    	boolean flag=false;
    	try{
    		flag=this.dao.findLogin(member);
    	}catch(Exception e){
    		throw e;
    	}finally{
    		this.dbc.close();
    	}
    	return flag;
    }
    public boolean MCreate(Member member) throws Exception{
    	boolean flag=false;
    	try {
    		if(this.dao.findById(member.getMid())==null){
			flag = this.dao.MCreate(member);
    		}
		} catch (Exception e) {
			throw e;
		} finally {
			this.dbc.close();
		}
		return flag;
    }
    public Member MShow(int mid) throws Exception{
    	Member member=null;
    	try {
			member= this.dao.MShow(mid);
		} catch (Exception e) {
			throw e;
		} finally {
			this.dbc.close();
		}
		return member;
    }
    public boolean MUpdate(Member member) throws Exception{
    	boolean flag=false;
    	try {
			flag= this.dao.MUpdate(member);
		} catch (Exception e) {
			throw e;
		} finally {
			this.dbc.close();
		}
		return flag;
    }
    public Member findById(int mid) throws Exception{
    	Member member=null;
    	try {
			member= this.dao.findById(mid);
		} catch (Exception e) {
			throw e;
		} finally {
			this.dbc.close();
		}
		return member;
    }
}

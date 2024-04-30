package edu.shiep.library.dao;

import edu.shiep.library.vo.Member;


public interface IMemberDAO {
	public boolean findLogin(Member member) throws Exception;
	public boolean MCreate(Member member) throws Exception;
	public Member MShow(int mid) throws Exception;
	public boolean MUpdate(Member member) throws Exception;
	public Member findById(int mid)throws Exception;
}

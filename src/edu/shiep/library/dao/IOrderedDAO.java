package edu.shiep.library.dao;
import java.util.List;
import edu.shiep.library.vo.Ordered;
public interface IOrderedDAO {
	public boolean doCreate(Ordered ord)throws Exception;
	public List<Ordered> findAll(int mid) throws Exception;
	public Ordered findByld(int ono)throws Exception;
}

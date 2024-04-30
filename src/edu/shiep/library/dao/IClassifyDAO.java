package edu.shiep.library.dao;
import java.util.List;
import edu.shiep.library.vo.Classify;
import edu.shiep.library.vo.Product;

public interface IClassifyDAO {
    public List<Classify> findClassify(int cno) throws Exception;
    public List<Classify> pager(int cno,int pageNo,int pageSize) throws Exception;
}

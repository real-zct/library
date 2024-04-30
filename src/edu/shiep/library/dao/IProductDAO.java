package edu.shiep.library.dao;
import java.util.List;
import edu.shiep.library.vo.Product;

public interface IProductDAO {
    public List<Product> pager(String keyword,int pageNo,int pageSize) throws Exception;
    public List<Product> findAll(String keyword) throws Exception;
    public Product findByld(int pno)throws Exception;
    public List<Product> pagerPriceDesc(String keyword,int pageNo,int pageSize) throws Exception;
    public List<Product> pagerPriceAsc(String keyword,int pageNo,int pageSize) throws Exception;
    public List<Product> pagerSalesDesc(String keyword,int pageNo,int pageSize) throws Exception;
    public List<Product> pagerSalesAsc(String keyword,int pageNo,int pageSize) throws Exception;
    public List<Product> pagerAmountLow(String keyword,int pageNo,int pageSize) throws Exception;
}

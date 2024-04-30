package edu.shiep.library.dao;
import java.util.List;
import edu.shiep.library.vo.Cart;

public interface ICartDAO {
    public List<Cart> findCart(int mid) throws Exception;
    public boolean doCreate(Cart cart)throws Exception;
	public boolean update(Cart cart)throws Exception;
	public boolean delete(Cart cart)throws Exception;
	public Cart findByld(int pno,int mid)throws Exception;
}

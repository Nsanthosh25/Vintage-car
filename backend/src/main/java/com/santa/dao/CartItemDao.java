package com.santa.dao;
import java.util.List;

import com.santa.models.CartItem;
import com.santa.models.User;
public interface CartItemDao {
	void addToCart(CartItem cartItem);
	User getUser(String email);
	List<CartItem> getCartItems(String email);
	void removeCartItem(int cartItemId);
	void updateCartItem(int cartItemId, int requestedQuantity);

}

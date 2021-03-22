package com.ecommerce.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ecommerce.model.CartItem;
import com.ecommerce.model.Product;
import com.ecommerce.service.ProductService;
import com.ecommerce.service.impl.ProductServiceImpl;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/member/cart/add" }) // ?pId=123
public class CartAddController extends HttpServlet {
	ProductService productService = new ProductServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pId = req.getParameter("pId");
		String quantity = req.getParameter("quantity");
		Product product = productService.get(Integer.parseInt(pId));
		CartItem cartItem = new CartItem();
		cartItem.setQuantity(Integer.parseInt(quantity));
		cartItem.setUnitPrice(product.getPrice());
		cartItem.setProduct(product);
		HttpSession httpSession = req.getSession();
		Object obj = httpSession.getAttribute("cart");
		if (obj == null) {
			Map<Integer, CartItem> map = new HashMap<Integer, CartItem>();
			map.put(cartItem.getProduct().getId(), cartItem);
			httpSession.setAttribute("cart", map);
		} else {
			Map<Integer, CartItem> map = extracted(obj);
			CartItem existedCartItem = map.get(Integer.valueOf(pId));
			if (existedCartItem == null) {
				map.put(product.getId(), cartItem);
			} else {
				existedCartItem.setQuantity(existedCartItem.getQuantity() + Integer.parseInt(quantity));
			}

			httpSession.setAttribute("cart", map);
		}
		/*
		 * if (obj != null) { CartItem cartItem = new CartItem();
		 * cartItem.setProduct(product); cartItem.setQuantity(1);
		 * cartItem.setUnitPrice(product.getPrice());
		 * 
		 * Map<Integer, CartItem> map = new HashMap<Integer, CartItem>(); // Su dung map
		 * de luu va tim kiem nhanh hon map.put(cartItem.getProduct().getId(),
		 * cartItem);
		 * 
		 * httpSession.setAttribute("cart", map);// luu vao session
		 * 
		 * } else {
		 * 
		 * Map<Integer, CartItem> map = (Map<Integer, CartItem>) obj; CartItem cartItem
		 * = map.get(product.getId()); // 1: Chua co san pham trong gio hang if
		 * (cartItem == null) { CartItem cartItems = new CartItem();
		 * cartItems.setProduct(product); cartItems.setQuantity(1);
		 * cartItems.setUnitPrice(product.getPrice());
		 * 
		 * // Su dung map de luu va tim kiem nhanh hon
		 * map.put(cartItems.getProduct().getId(), cartItems);
		 * 
		 * httpSession.setAttribute("cart", map);// luu vao session } else { // Truong
		 * hop da co roi cartItem.setQuantity(1 + cartItem.getQuantity());
		 * 
		 * httpSession.setAttribute("cart", map); }
		 */
		resp.sendRedirect(req.getContextPath() + "/member/cart");
	}

	@SuppressWarnings("unchecked")
	private Map<Integer, CartItem> extracted(Object obj) {
		return (Map<Integer, CartItem>) obj;
	}
}
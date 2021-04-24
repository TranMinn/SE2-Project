package com.ecommerce.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ecommerce.model.CartItem;
import com.ecommerce.service.CartItemService;
import com.ecommerce.service.CartService;
import com.ecommerce.service.impl.CartServiceImpl;
import com.ecommerce.service.impl.CartServiceItemImpl;
import com.ecommerce.util.RandomUUID;

/**
 * Servlet implementation class DiscountController
 */
@WebServlet("/DiscountController")
public class DiscountController extends HttpServlet {
	CartService cartService = new CartServiceImpl();
	CartItemService cartItemService = new CartServiceItemImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String discount = req.getParameter("discount");
		double total = 0;
		
//		Object objCart = session.getAttribute("cart");
//		if (objCart != null) {
//			@SuppressWarnings("unchecked")
//			Map<Integer, CartItem> map = (Map<Integer, CartItem>) objCart;
//
//			for (CartItem cartItem : map.values()) {
//				cartItem.setCart(cart);
//				cartItem.setId(RandomUUID.getRandomID());
//				cartItemService.insert(cartItem);
//				
//			}
//
//		}
		
		
		
		
		
		
		
		
		
//		HttpSession session = req.getSession();
//		Object objCart = session.getAttribute("cart");
//		if (objCart != null) {
//			@SuppressWarnings("unchecked")
//			Map<Integer, CartItem> map = (Map<Integer, CartItem>) objCart;

		}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

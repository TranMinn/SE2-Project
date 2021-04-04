package com.ecommerce.controller;

import java.io.IOException;
import java.io.Serializable;
import java.util.Map;

import javax.servlet.RequestDispatcher;
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

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/member/order")
public class OrderController extends HttpServlet implements Serializable {
	CartService cartService = new CartServiceImpl();
	CartItemService cartItemService = new CartServiceItemImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		Object objCart = session.getAttribute("cart");
		if (objCart != null) {
			@SuppressWarnings("unchecked")
			Map<Integer, CartItem> map = (Map<Integer, CartItem>) objCart;

		}
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/view/check-out.jsp");
		dispatcher.forward(req, resp);

	}


}

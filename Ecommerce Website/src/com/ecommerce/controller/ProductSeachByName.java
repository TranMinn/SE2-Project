package com.ecommerce.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.model.Product;
import com.ecommerce.service.ProductService;
import com.ecommerce.service.impl.ProductServiceImpl;
@SuppressWarnings("serial")
@WebServlet(urlPatterns="/product/seach")
public class ProductSeachByName extends HttpServlet {
	ProductService productService=new ProductServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		List<Product> productSeachByName =productService.seachByName(name);
		req.setAttribute("productSeachByName", productSeachByName);
		req.getRequestDispatcher("/view/client/view/product-seach-by-name.jsp").forward(req, resp);	
	}
}

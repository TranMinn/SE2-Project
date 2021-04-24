package com.ecommerce.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.model.Voucher;
import com.ecommerce.service.VoucherService;
import com.ecommerce.service.impl.CategoryServiceImpl;
import com.ecommerce.service.impl.VoucherServiceImpl;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/admin/voucher/add" })
public class VoucherAddController  extends HttpServlet {
	
	VoucherService voucherService = new VoucherServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/view/add-voucher.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String code = req.getParameter("code");
		String dis = req.getParameter("discount");
		
		int discount = Integer.parseInt(dis);
		
		Voucher voucher = new Voucher();
		voucher.setCode(code);
		voucher.setDiscount(discount);
		voucherService.insert(voucher);

		resp.sendRedirect(req.getContextPath() + "/admin/voucher/list");

	}

}

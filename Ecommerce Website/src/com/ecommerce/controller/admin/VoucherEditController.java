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
import com.ecommerce.service.impl.VoucherServiceImpl;



@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/admin/voucher/edit" })
public class VoucherEditController extends HttpServlet {
	
	VoucherService voucherService = new VoucherServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		Voucher voucher = voucherService.get(Integer.parseInt(id));
		req.setAttribute("voucher", voucher);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/view/edit-voucher.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Voucher voucher = new Voucher();
		voucher.setId(Integer.parseInt(req.getParameter("id")));
		voucher.setCode(req.getParameter("code"));
		voucher.setDiscount(Integer.parseInt(req.getParameter("discount")));
		
		voucherService.edit(voucher);
		resp.sendRedirect(req.getContextPath() + "/admin/voucher/list");

	}

}

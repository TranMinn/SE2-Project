package com.ecommerce.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.service.VoucherService;
import com.ecommerce.service.impl.VoucherServiceImpl;


@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/admin/voucher/delete" })
public class VoucherDeleteController extends HttpServlet {

	VoucherService voucherService = new VoucherServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		voucherService.delete(Integer.parseInt(id));
		resp.sendRedirect(req.getContextPath() + "/admin/voucher/list");
	}
	
}

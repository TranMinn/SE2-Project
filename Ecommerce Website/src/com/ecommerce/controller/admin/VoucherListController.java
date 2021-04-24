package com.ecommerce.controller.admin;

import java.io.IOException;
import java.util.List;

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
@WebServlet(urlPatterns = { "/admin/voucher/list" })
public class VoucherListController extends HttpServlet {
	
	VoucherService voucherService = new VoucherServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Voucher> voucherList = voucherService.getAll();
		req.setAttribute("voucherList", voucherList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/view/list-voucher.jsp");
		dispatcher.forward(req, resp);
	}

}

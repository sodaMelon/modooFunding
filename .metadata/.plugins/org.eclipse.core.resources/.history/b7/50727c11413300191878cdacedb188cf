package com.nonage.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nonage.dao.CartDAO;
import com.nonage.dto.CartVO;
import com.nonage.dto.MemberVO;

public class CartInsertAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
	String url = "NonageServlet?command=cart_list";
	HttpSession session = request.getSession();
	MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
	//로그인해야만 카트를 이용할수 있게 하기위해서 세션에서 정보 불러옴.
	//로그인하지 않았다면 이용하지 못하게 하기위해 분기문사용
	if(loginUser == null) {
		url="NonageServlet?command=login_form";
		
	}else {
		CartVO cartVO = new CartVO();
		cartVO.setId(loginUser.getId()); //id값 넣기 . 나머지값은 getparameter이용
		cartVO.setPseq(Integer.parseInt(request.getParameter("pseq")));
		cartVO.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		CartDAO cartDAO = CartDAO.getInstance();
		try {
			cartDAO.insertCart(cartVO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	response.sendRedirect(url);
	}

}

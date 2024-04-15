package org.jeju.ctrl.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeju.dao.MemberDAO;
import org.jeju.dto.Member;

@WebServlet("/EditMemberPro.do")
public class EditMemberProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditMemberProCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String id = request.getParameter("id");
		Member mem = new Member(request.getParameter("name"),
				request.getParameter("pw"),
				request.getParameter("tel"),
				request.getParameter("addr"),
				request.getParameter("brith"),
				request.getParameter("id"));
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.upMember(mem);
		if(cnt>0) {
			response.sendRedirect("/pro01");
		} else {
			response.sendRedirect("/EditMember.do?id="+id);
		}
	}

}
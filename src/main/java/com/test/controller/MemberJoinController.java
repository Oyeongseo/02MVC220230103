package com.test.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberJoinController  implements SubController{
	
	private static String msg;
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		//System.out.println("[MJC] Start-");
		try 
		{
			//0 Get구별
			String method=req.getMethod();
			if(method.equals("GET")) {
				System.out.println("[MJC] 요청 METHOD : " + method);
				req.getRequestDispatcher("/WEB-INF/view/member/join.jsp").forward(req, resp);
				return ;
			}
			
			//1 파라미터 받기
			Map<String,String[]> params=req.getParameterMap();
			for(String name : params.keySet()) {
				System.out.println("name : " + name  + " val : "+params.get(name)[0]);
			}
			
			//2 Validation
			boolean isvalid=isValid(params);
			if(!isvalid) {
				//유효성 체크 오류 발생시 전달할 메시지 + 이동될 경로
				
				req.setAttribute("msg", msg);
				req.getRequestDispatcher("/WEB-INF/view/member/join.jsp").forward(req, resp);
				return ;
			}
			//3 Service
			
			//4 View
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	private boolean isValid(Map<String, String[]> params) {
		// TODO Auto-generated method stub
		msg="잘 좀 입력해봐유~";
		return false;
	}

}

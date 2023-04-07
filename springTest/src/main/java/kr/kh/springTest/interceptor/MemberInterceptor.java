package kr.kh.springTest.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class MemberInterceptor extends HandlerInterceptorAdapter{
	
	//전처리기는 클라이언트에서 컨트롤러로 요청할 때 가로채는 것이다. 쉽게 말해 컨트롤러가 호출되기 전에 실행되는 메서드이다.
   @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        // TODO Auto-generated method stub
        return super.preHandle(request, response, handler);
    }
}

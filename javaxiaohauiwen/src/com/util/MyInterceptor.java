package com.util;

import com.entity.UserInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class MyInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		UserInfo user=(UserInfo)ActionContext.getContext().getSession().get("userList");
		String method=actionInvocation.getProxy().getMethod();
		
		if("ding".equals(method)||"myhouse".equals(method)||"myding".equals(method)){
			if(user==null){
				return "login";
			}else{
				return actionInvocation.invoke();
			}
		}else{
			return actionInvocation.invoke();
		}
	}
}
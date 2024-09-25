package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Member;

public interface MemberService 
{
	public String addmember (Member mem);
	public Member checkmemberlogin(String email, String password);
}

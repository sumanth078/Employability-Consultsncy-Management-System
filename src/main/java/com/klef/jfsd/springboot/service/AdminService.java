package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Admin;

public interface AdminService 
{
	public Admin checkadminlogin(String uname, String pwd);
	public long memcount(); 		//count(*)
}

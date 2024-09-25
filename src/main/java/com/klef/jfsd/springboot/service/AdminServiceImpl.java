package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.MemberRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminrepository;
	
	@Autowired
	private MemberRepository memberrepository;
	
	public Admin checkadminlogin(String uname, String pwd) 
	{
		return adminrepository.checkadminlogin(uname, pwd);
	}
	
	public long memcount() 
	{
		return memberrepository.count();		
	}
}

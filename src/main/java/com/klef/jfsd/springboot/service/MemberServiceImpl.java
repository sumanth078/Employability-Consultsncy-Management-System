package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Member;
import com.klef.jfsd.springboot.repository.MemberRepository;

@Service
public class MemberServiceImpl implements MemberService
{
	@Autowired
	private MemberRepository memberrepository;

	@Override
	public String addmember(Member mem) {
		memberrepository .save(mem);
		return "Member Added Successfully";
	}

	@Override
	public Member checkmemberlogin(String email, String password) {
		return memberrepository.checkmemberlogin(email, password);
	}
	
}

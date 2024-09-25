package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Member;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.MemberService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController {
	@Autowired
	private MemberService memberService;

	@Autowired
	private AdminService adminService;

	@GetMapping("/")
	public String main() {
		return "index";
	}

	@GetMapping("signup")
	public ModelAndView memberregistration() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signup");
		return mv;
	}

	@PostMapping("insertmem")
	public ModelAndView insertaction(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		String msg = null;

		try {
			String fullname = request.getParameter("fullname");
			String email = request.getParameter("email");
			String contact = request.getParameter("contact");
			String password = request.getParameter("password");

			Member mem = new Member();
			mem.setFullname(fullname);
			mem.setEmail(email);
			mem.setContact(contact);
			mem.setPassword(password);

			msg = memberService.addmember(mem);

			mv.setViewName("login");
			mv.addObject("message", msg);
		} catch (Exception e) {
			mv.setViewName("index");
			msg = e.getMessage();
			mv.addObject("message", msg);
		}
		return mv;
	}

	@GetMapping("login") // URI & method name can be different
	public ModelAndView memberlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}

	@PostMapping("checkmemlogin")
	public ModelAndView checkmemlogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		Member mem = memberService.checkmemberlogin(email, password);

		if (mem != null) {
			// session

			HttpSession session = request.getSession();

			session.setAttribute("mid", mem.getId()); // mid is a session variable
			session.setAttribute("mname", mem.getFullname()); // mfullname is a session variable

			mv.setViewName("memhome");
		} else {
			mv.setViewName("login");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}

	@GetMapping("memhome")
	public ModelAndView memhome(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("memhome");

		HttpSession session = request.getSession();

		int mid = (int) session.getAttribute("mid"); // mid is a session variable
		String mname = (String) session.getAttribute("mname"); // mname is a session variable

		mv.addObject("mid", mid);
		mv.addObject("mname", mname);
		return mv;
	}

	@GetMapping("adminlogin") // URI & method name can be different
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	  public ModelAndView checkadminlogin(HttpServletRequest request)
	  {
	    String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    
	    Admin a = adminService.checkadminlogin(username, password);
	    
	    ModelAndView mv = new ModelAndView();
	    if(a!=null)
	    {

	      long memcount = adminService.memcount();
	      mv.setViewName("adminhome");
	      mv.addObject("ecount", memcount);
	    }
	    else
	    {
	      mv.setViewName("adminlogin");
	      mv.addObject("message","Login Failed");
	    }
	    return mv;
	  }

	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		long memcount = adminService.memcount();

		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		mv.addObject("ecount", memcount);

		return mv;
	}
}

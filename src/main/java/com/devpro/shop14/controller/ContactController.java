package com.devpro.shop14.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.devpro.shop14.dto.AjaxResponse;
import com.devpro.shop14.dto.Contact;
import com.devpro.shop14.dto.Subscribe;

@Controller
public class ContactController {
	/**
	 * @param model    - Dùng để đẩy dữ liệu hoặc hứng dữ liệu từ tầng VIEW.
	 * @param request  - Các thông tin người dùng yêu cầu.
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contact(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
//		String name = request.getParameter("name");
//		System.out.println("Contact URL[name]: "+name);
//		model.addAttribute("name", name);
		model.addAttribute("contact", new Contact());
		return "front-end/contact";

	}

	@RequestMapping(value = { "/contact1" }, method = RequestMethod.POST)
	public String contact1(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		String email = request.getParameter("email");
		System.out.println("Contact[email]: " + email);
		return "front-end/contact";

	}

	// Cach 2: Submit form using spring form
	@RequestMapping(value = { "/contact2" }, method = RequestMethod.POST)
	public String contact2(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
			@ModelAttribute("contact") Contact contact) throws Exception {
		System.out.println("User Name : " + contact.getName());
		System.out.println("User Email : " + contact.getEmail());
		System.out.println("User Phone : " + contact.getPhone());
		System.out.println("User Content : " + contact.getContent());
		return "front-end/contact";
	}

	// Cach 3: Submit form using ajax
	@RequestMapping(value = { "/contact3" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> contact3(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @RequestBody Contact contact) {
		System.out.println("User Name: " + contact.getName());
		return ResponseEntity.ok(new AjaxResponse(200, contact.getName()));
	}

	// Cach 3: subscribe form using ajax
	@RequestMapping(value = { "/subscribe" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> subscribe(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @RequestBody Subscribe subscribe) {
		System.out.println("User Name sub: " + subscribe.getSubname());
		System.out.println("User Email sub: " + subscribe.getSubemail());
		return ResponseEntity.ok(new AjaxResponse(200, subscribe.getSubname()+" da subscribe thanh cong"));
	}
}

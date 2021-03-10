package com.devpro.shop14.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.devpro.shop14.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/*import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;*/

import com.devpro.shop14.entities.Product;
import com.devpro.shop14.repository.CategoryRepository;
import com.devpro.shop14.repository.ProductRepository;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
//import com.devpro.shop14.service.ProductService;

@Controller
public class AdminController {
	/**
	 * @param model    - Dùng để đẩy dữ liệu hoặc hứng dữ liệu từ tầng VIEW.
	 * @param request  - Các thông tin người dùng yêu cầu.
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@Autowired
	private CategoryRepository categoryrepo;
	

	@Autowired private ProductRepository productRepo;

	@Autowired
	private ProductService productService;


	@RequestMapping(value = { "/adminindex" }, method = RequestMethod.GET)
	public String adminindex(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		/* model.addAttribute("productRepo", productRepo.findAll()); */
		return "back-end/adminindex";
	}

	@RequestMapping(value = { "/forms" }, method = RequestMethod.GET)
	public String forms(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("product",new Product());
		model.addAttribute("categories",categoryrepo.findAll());
		return "back-end/forms";
	}

	@RequestMapping(value = { "/addproduct" }, method = RequestMethod.POST)
	public String addProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response
			,@ModelAttribute("product") Product product, @RequestParam("productAvatar")MultipartFile productAvatar)
			throws Exception {
		productService.saveOrUpdate(product, productAvatar);
		return "redirect:/forms";
	}
	
	@RequestMapping(value = { "/table" }, method = RequestMethod.GET)
	public String table(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("product",new Product());
		model.addAttribute("product", productRepo.findAll());
		return "back-end/table";
	}

	
	/*
	 * @RequestMapping(value = { "/forms1" }, method = RequestMethod.POST) public
	 * String forms_post(final ModelMap model, final HttpServletRequest request,
	 * final HttpServletResponse response, @RequestParam("productAvatar")
	 * MultipartFile productAvatar) throws Exception {
	 * System.out.println(productAvatar.getOriginalFilename()); return
	 * "redirect:/forms";
	 * 
	 * }
	 */

	// Cach 2: Submit form using spring form
	/*
	 * @RequestMapping(value = { "/forms1" }, method = RequestMethod.POST) public
	 * String contact2(final ModelMap model, final HttpServletRequest request, final
	 * HttpServletResponse response,
	 * 
	 * @ModelAttribute("categories") Categories categories) throws Exception {
	 * 
	 * return "front-end/forms"; }
	 */
}

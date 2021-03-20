package com.devpro.shop14.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.devpro.shop14.service.CategoryService;
import com.devpro.shop14.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/*import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;*/

import com.devpro.shop14.entities.Categories;
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

	@Autowired
	private ProductRepository productRepo;

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value = { "/adminindex" }, method = RequestMethod.GET)
	public String adminindex(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		/* model.addAttribute("productRepo", productRepo.findAll()); */
		return "back-end/adminindex";
	}

	@RequestMapping(value = { "/forms" }, method = RequestMethod.GET)
	public String forms(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("product", new Product());
		model.addAttribute("categories", categoryrepo.findAll());
		return "back-end/forms";
	}

	// submit information about product when user input data
	@RequestMapping(value = { "/addproduct" }, method = RequestMethod.POST)
	public String addProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
			@ModelAttribute("product") Product product, @RequestParam("productAvatar") MultipartFile productAvatar)
			throws Exception {
		System.out.println("image : " + productAvatar.getOriginalFilename());
		productService.saveOrUpdate(product, productAvatar);
		return "redirect:/forms";
	}

	@RequestMapping(value = { "/table" }, method = RequestMethod.GET)
	public String table(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("product", new Product());
		model.addAttribute("product", productRepo.findAll());
		return "back-end/table";
	}

	@RequestMapping(value = { "/editproduct/{id}" }, method = RequestMethod.GET)
	public String editProduct_Get(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @PathVariable("id") int productId) throws Exception {
		model.addAttribute("product", productRepo.findById(productId).get());
		System.out.println("product id:" + productId);
		Categories categories = productRepo.findById(productId).get().getCategories();
		// log kiem tra name categories
		System.out.println("name of categories :" + categories.getName());
		/////
		model.addAttribute("name", productRepo.findById(productId).get().getCategories());
		model.addAttribute("categories", categoryrepo.findAll());
		return "back-end/forms1";
	}
	
	@RequestMapping(value = { "/editproduct" }, method = RequestMethod.POST)
	public String editProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
			@ModelAttribute("product") Product product, @RequestParam("productAvatar") MultipartFile productAvatar)
			throws Exception {
		System.out.println("image : " + productAvatar.getOriginalFilename());
		productService.saveOrUpdate(product, productAvatar);
		return "redirect:/table";
	}

	@RequestMapping(value = { "/deleteproduct" }, method = RequestMethod.POST)
	public String deleteProduct(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("id for delete:" + id);
		productService.delete(id);
		return "redirect:/table";
	}
	
	@RequestMapping(value = { "/forms2" }, method = RequestMethod.GET)
	public String forms2(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("category", new Categories());
		model.addAttribute("categories", categoryrepo.findAll());
		return "back-end/forms2";
	}
	
	@RequestMapping(value = { "/addcategory" }, method = RequestMethod.POST)
	public String addCategory(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
			@ModelAttribute("category") Categories categories)
			throws Exception {
		System.out.println("category name : " + categories.getName());
		System.out.println("description : " + categories.getDescription());
		categoryService.saveOrUpdate(categories);
		return "redirect:/forms2";
	}
	
	@RequestMapping(value = { "/editcategory/{id}" }, method = RequestMethod.GET)
	public String editCategory_Get(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @PathVariable("id") int categoryId) throws Exception {
		model.addAttribute("category", categoryrepo.findById(categoryId).get());
		return "back-end/forms2";
	}
	
	@RequestMapping(value = { "/editcategory" }, method = RequestMethod.GET)
	public String editCategory_Get(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @ModelAttribute("category") Categories catetory) throws Exception {
		categoryService.saveOrUpdate(catetory);
		return "back-end/forms2";
	}
	
	@RequestMapping(value = { "/deletecategory" }, method = RequestMethod.POST)
	public String deleteCategory(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("id for delete:" + id);
		categoryService.delete(id);
		return "redirect:/table2";
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

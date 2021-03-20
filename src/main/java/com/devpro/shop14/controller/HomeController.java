package com.devpro.shop14.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop14.dto.ProductSearch;
import com.devpro.shop14.entities.Product;
import com.devpro.shop14.repository.CategoryRepository;
import com.devpro.shop14.repository.ProductRepository;
import com.devpro.shop14.service.ProductService;




@Controller
public class HomeController {
	/**
	 * @param model    - Dùng để đẩy dữ liệu hoặc hứng dữ liệu từ tầng VIEW.
	 * @param request  - Các thông tin người dùng yêu cầu.
	 * @param response
	 * @return
	 * @throws Exception
	 */
	
	@Autowired
	private CategoryRepository categoryRepository;
	
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = { "/","/home", "/index", "/trangchu" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("products", new Product());
		model.addAttribute("products",productRepository.findAll());
//		System.out.println("product image src : " + productRepository.findAll().get(4).getAvatar());
		return "front-end/index";

	}
	/**
	 * @param model - Dùng để đẩy dữ liệu hoặc hứng dữ liệu từ tầng VIEW.
	 * @param request - Các thông tin người dùng yêu cầu.
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = { "/detail"}, method = RequestMethod.GET)
	public String detail(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		return "front-end/detail";
		
	}
	/**
	 * @param model - Dùng để đẩy dữ liệu hoặc hứng dữ liệu từ tầng VIEW.
	 * @param request - Các thông tin người dùng yêu cầu.
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = { "/sanphamkhuyenmai" }, method = RequestMethod.GET)
	public String sanphamkhuyenmai(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		return "front-end/sanphamkhuyenmai";
		
	}
	
	/**
	 * @param model - Dùng để đẩy dữ liệu hoặc hứng dữ liệu từ tầng VIEW.
	 * @param request - Các thông tin người dùng yêu cầu.
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = { "/sanphambanchay" }, method = RequestMethod.GET)
	public String sanphambanchay(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		return "front-end/sanphambanchay";
		
	}
	/**
	 * @param model - Dùng để đẩy dữ liệu hoặc hứng dữ liệu từ tầng VIEW.
	 * @param request - Các thông tin người dùng yêu cầu.
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = { "/sanphammoi" }, method = RequestMethod.GET)
	public String sanphammoi(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		return "front-end/sanphammoi";
		
	}
	/**
	 * @param model - Dùng để đẩy dữ liệu hoặc hứng dữ liệu từ tầng VIEW.
	 * @param request - Các thông tin người dùng yêu cầu.
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = { "/sanphamthanhly" }, method = RequestMethod.GET)
	public String sanphamthanhly(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		return "front-end/sanphamthanhly";
		
	}
	
	
	@RequestMapping(value = { "/searchAll" }, method = RequestMethod.POST)
	public String searchProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		String searchText = request.getParameter("searchText");
		ProductSearch productSearch = new ProductSearch();
		
		productSearch.setSearchText(searchText);
		List<Product> products = productService.search(productSearch);
		for(Product temp : products) {
			System.out.println("cate name : " + temp.getCategories().getName());
		}
		model.addAttribute("products",products);
		
		model.addAttribute("categories",categoryRepository.findAll());
		return "front-end/danhmuc";
		
	}
	
	/**
	 * @param model - Dùng để đẩy dữ liệu hoặc hứng dữ liệu từ tầng VIEW.
	 * @param request - Các thông tin người dùng yêu cầu.
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = { "/danhmuc" }, method = RequestMethod.GET)
	public String danhmuc(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("products", new Product());
		model.addAttribute("products",productRepository.findAll());
		
		model.addAttribute("categories",categoryRepository.findAll());
		return "front-end/danhmuc";
		
	}
	
	@RequestMapping(value = { "/listsanpham" }, method = RequestMethod.GET)
	public String listSP(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		String categorySeo = request.getParameter("seo");
		ProductSearch productSearch = new ProductSearch();
		System.out.println("cate seo : " + categorySeo);
		productSearch.setCategorySeo(categorySeo);
		List<Product> products = productService.search(productSearch);
		System.out.println("size of product: " + products.size());
		for(Product temp : products) {
			System.out.println("cate name : " + temp.getCategories().getName());
		}
		model.addAttribute("products",products);
		
		model.addAttribute("categories",categoryRepository.findAll());
		return "front-end/danhmuc";
		
	}
	/**
	 * @param model - Dùng để đẩy dữ liệu hoặc hứng dữ liệu từ tầng VIEW.
	 * @param request - Các thông tin người dùng yêu cầu.
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = { "/dmnam" }, method = RequestMethod.GET)
	public String dmnam(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		return "front-end/dmnam";
		
	}
	/**
	 * @param model - Dùng để đẩy dữ liệu hoặc hứng dữ liệu từ tầng VIEW.
	 * @param request - Các thông tin người dùng yêu cầu.
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = { "/dmnu" }, method = RequestMethod.GET)
	public String dmnu(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		return "front-end/dmnu";
		
	}
	/**
	 * @param model - Dùng để đẩy dữ liệu hoặc hứng dữ liệu từ tầng VIEW.
	 * @param request - Các thông tin người dùng yêu cầu.
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public String login(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		return "front-end/login";
		
	}
}

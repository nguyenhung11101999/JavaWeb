/*
 * package com.devpro.shop14.service;
 * 
 * import java.io.File;
 * 
 * import javax.transaction.Transactional;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Service; import
 * org.springframework.web.multipart.MultipartFile;
 * 
 * import com.devpro.shop14.entities.Product; import
 * com.devpro.shop14.repository.ProductRepository;
 * 
 * @Service public class ProductService {
 * 
 * @Autowired private ProductRepository productRepo;
 * 
 * 
 * 
 *//**
	 * Kiem tra uploaded file.
	 * 
	 * @param images
	 * @return true - khi nguoi dung khong upload file.
	 *//*
		 * private boolean isEmptyUploadFile(MultipartFile[] images) { if(images == null
		 * || images.length <= 0) return true; if(images.length == 1 &&
		 * images[0].getOriginalFilename().isEmpty()) return true; return false; }
		 * 
		 * @Transactional(rollbackOn = Exception.class) public void saveOrUpdate(Product
		 * product, MultipartFile productAvatar) throws Exception { try {
		 * 
		 * // kiem tra neu nguoi dung co upload file. if(productAvatar != null &&
		 * !productAvatar.getOriginalFilename().isEmpty()) {
		 * productAvatar.transferTo(new File("E:\\JavaWeb\\com.devpro.shop14\\upload\\"
		 * + productAvatar.getOriginalFilename())); }
		 * 
		 * productRepo.save(product);
		 * 
		 * } catch (Exception e) { e.printStackTrace(); throw e; } } }
		 */
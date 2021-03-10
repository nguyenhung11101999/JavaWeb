package com.devpro.shop14.service;

import com.devpro.shop14.Constants;
import com.devpro.shop14.Utilities;
import com.devpro.shop14.dto.ProductSearch;
import com.devpro.shop14.entities.Product;
import com.devpro.shop14.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.io.File;
import java.util.List;

import static com.devpro.shop14.Constants.ROOT_UPLOAD_PATH;

@Service
public class ProductService implements Constants {

    @Autowired
    private ProductRepository productsRepository;

    @PersistenceContext
    EntityManager entityManager;

    /*
     * kiem tra null cua image
     *
     * @param image
     */

    private boolean isEmptyUploadFile(MultipartFile[] images) {
        if (images == null || images.length <= 0)
            return true;
        if (images.length == 1 && images[0].getOriginalFilename().isEmpty())
            return true;
        return false;
    }

    private boolean isEmptyUploadFile(MultipartFile image) {
        return image == null || image.getOriginalFilename().isEmpty();
    }

    @Transactional(rollbackOn = Exception.class)
    public void saveOrUpdate(Product product, MultipartFile productAvatar) throws Exception {
        try {
            System.out.println("product id update: " + product.getId());
            // truong hop la chinh sua

            if(product.getId() > 0 && product.getId() != null) {
                Product productIdDB = productsRepository.findById(product.getId()).get();
                System.out.println("product id update: " + productIdDB.getId());
                // neu upload lai anh thi phai xoa anh cu di
                if(!isEmptyUploadFile(productAvatar)) {
                    String avatarPath = ROOT_UPLOAD_PATH + productIdDB.getAvatar();
                    new File(avatarPath).delete();
                }
            }

            // kiem tra neu nguoi dung co upload file.
            if(productAvatar != null && !productAvatar.getOriginalFilename().isEmpty()) {
                String avatarPath = "/product/avatar/" + productAvatar.getOriginalFilename();
                productAvatar.transferTo(new File(ROOT_UPLOAD_PATH + "/product//avatar//" + productAvatar.getOriginalFilename()));
                product.setAvatar(avatarPath);
            }

            product.setSeo(Utilities.seo(product.getTitle()) + "-" +System.currentTimeMillis());
            productsRepository.save(product);

        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
    }

    public void delete(Integer id) {
        System.out.println("===delete:"+id);
        try {
            productsRepository.deleteById(id);
        }catch (Exception e) {

            System.out.println("===e:"+e);
            e.printStackTrace();

        }
    }

    public List<Product> search(ProductSearch productSearch) {
        String jpql = "SELECT p FROM Products p where 1=1";

        if(!StringUtils.isEmpty(productSearch.getSeo())) {
            jpql = jpql + " AND p.seo = '" + productSearch.getSeo() + "'";
        }

        if(!StringUtils.isEmpty(productSearch.getCategorySeo())) {
            jpql = jpql + " AND p.categories.name = '" + productSearch.getCategorySeo() + "'";
        }

        Query query = entityManager.createQuery(jpql, Product.class);
        return query.getResultList();
    }
}

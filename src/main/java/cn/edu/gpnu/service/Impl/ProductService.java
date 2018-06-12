package cn.edu.gpnu.service.Impl;


import cn.edu.gpnu.bean.Product;
import cn.edu.gpnu.dao.ProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    @Autowired
    private ProductMapper productMapper;

    public List<Product> getProducts() {
        return productMapper.selectByExample(null);
    }

//    public void add(Product product) {
//        productMapper.insert(product);
//    }
}

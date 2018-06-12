package cn.edu.gpnu.controller;

import cn.edu.gpnu.service.Impl.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class IndexController {
    @Autowired
    private ProductService productService;

//    @RequestMapping(value = "/product/products",method = RequestMethod.GET)
//    @ResponseBody
//    public Msg getProducts(){
//        List<Product> products =  productService.getProducts();
//        for (Product product:products){
//            System.out.println(product);
//        }
//        return Msg.success().add("products",products);
//    }
}

package cn.edu.gpnu.controller;

import cn.edu.gpnu.bean.Msg;
import cn.edu.gpnu.bean.Product;
import cn.edu.gpnu.service.Impl.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ProductController {
    @Autowired
    private ProductService productService;

//    @RequestMapping(value = "/product/add",method = RequestMethod.PUT)
//    @ResponseBody
//    public Msg add(Product product,HttpServletRequest request){
//        productService.add(product);
//        return Msg.success().add("msg","添加成功");
//    }


    @RequestMapping(value = "/product/products",method = RequestMethod.GET)
    @ResponseBody
    public Msg getProducts(){
        List<Product> products =  productService.getProducts();
        return Msg.success().add("products",products);
    }

}

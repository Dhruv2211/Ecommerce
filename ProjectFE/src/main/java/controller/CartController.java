package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import model.dao.ICartDAO;
import model.daoimpl.CartDAOImpl;
import model.entity.Cart;
import model.entity.Products;
import model.entity.Userinfo;

@Controller
public class CartController {
	
	
	
	

    public String getLoggedInUserName() {
    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
    String name = authentication.getName();
    return name;
    }

    @GetMapping(value = "/addcartitem")
    public String addCartItem(@RequestParam(value="productId")String productId,@RequestParam(value="category")String category,@RequestParam(value="unitPrice")String unitPrice,
    		@RequestParam(value="productName")String productName,
            @ModelAttribute("Cart")Cart c, @ModelAttribute("User")Userinfo u, @ModelAttribute("Product")Products p) { 
        
        boolean b;
        ICartDAO ic = new CartDAOImpl();
        u.setUserName(getLoggedInUserName());
        p.setProductId(Integer.parseInt(productId));
        p.setCategory(category);
        p.setProductName(productName);
        p.setUnitPrice(Double.parseDouble(unitPrice));
        c.setProduct(p);
        c.setUserInfo(u);
        b=ic.addCartItem(c);
   
    	
        if(b) 
         return "success";
        else 
            return "newhomepage";


}

    @RequestMapping(value = "/showcart",  method = RequestMethod.GET)
    public String showCart(Model model) {

    	ICartDAO ic = new CartDAOImpl();
        /*List<Products> products =  this.iCartDAO.getCartForUser(getLoggedInUserName());*/
        model.addAttribute("products",ic.getCartForUser(getLoggedInUserName()));
        return "cart";

}
}   
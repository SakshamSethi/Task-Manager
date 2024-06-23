package productcrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.dao.ProductDao;
import productcrudapp.model.Product;

@Controller
public class MainController {
	@Autowired
	private ProductDao productDao;

	@RequestMapping("/")
	public String home(Model m) {
		List<Product> products = productDao.getProducts();
		m.addAttribute("products", products);
		return "index";
	}
	
	//view description 
	
			@RequestMapping("/desc/{productId}")
			public String viewDesc(@PathVariable("productId") int productId, Model m) {

			   Product product = this.productDao.getProduct(productId);
				m.addAttribute("product",product);
			   return "view";
			}

	// show add product form
	@RequestMapping("/add-product")
	public String addProduct(Model m) {
		m.addAttribute("title", "Add Product");
		return "add_product_form";
	}

	// handle add product form
	@RequestMapping(value = "/handle-product", method = RequestMethod.POST)
	public RedirectView hadleProduct(@ModelAttribute Product product, HttpServletRequest req) {
		RedirectView rv = new RedirectView();
		System.out.println(product);
		productDao.createProduct(product);
		rv.setUrl(req.getContextPath() + "/");
		return rv;
	}

	// delete handler
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId, HttpServletRequest req) {

		this.productDao.deleteProduct(productId);
		RedirectView rv = new RedirectView();
		rv.setUrl(req.getContextPath() + "/");
		return rv;
	}

	// update handler
		@RequestMapping("/update/{productId}")
		public String updateform(@PathVariable("productId") int productId, Model m) {

		   Product product = this.productDao.getProduct(productId);
			m.addAttribute("product",product);
		   return "update_form";
		}
	
	
}

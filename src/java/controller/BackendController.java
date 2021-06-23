/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dto.GetAllCategoryDTO;
import entity.Categorys;
import entity.Contact;
import entity.Discount;
import entity.Group;
import entity.Order;
import entity.Products;
import entity.Supplier;
import entity.Season;
import entity.User;
import java.io.File;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import model.AccountModel;
import model.CatalogModel;
import model.ContactModel;
import model.DiscountModel;
import model.GroupModel;
import model.OrderModel;
import model.ProductModel;
import model.ProviderModel;
import model.SeasonModel;
import model.UserModel;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import util.CheckEmail;
import util.ConnectionDB;

/**
 *
 * @author Win 10
 */
@Controller
public class BackendController {

    private ProductModel productModel;
    private ProviderModel providerModel;
    private CatalogModel catalogModel;
    private UserModel userModel;
    private GroupModel groupModel;
    private CheckEmail checkEmail;
    private OrderModel orderModel;
    private SeasonModel seasonModel;
    private DiscountModel discountModel;
    private ContactModel contactModel;

    public BackendController() {
        productModel = new ProductModel();
        providerModel = new ProviderModel();
        catalogModel = new CatalogModel();
        userModel = new UserModel();
        groupModel = new GroupModel();
        checkEmail = new CheckEmail();
        orderModel = new OrderModel();
        seasonModel = new SeasonModel();
        discountModel = new DiscountModel();
        contactModel = new ContactModel();
    }
    
    
    // Product
    // Get All products
    @RequestMapping(value = "AllProduct")
    public ModelAndView GetAllProduct(HttpSession session) {
        ModelAndView model;
        if (AccountModel.CheckUrl(session)) {
            model = new ModelAndView("Admin/Product");
            List<Products> list = productModel.getAllProduct();
            model.getModelMap().put("listProduct", list);
            return model;
        } else {
            model = new ModelAndView("Admin/Login");
            User user = new User();
            model.getModelMap().put("user", user);
        }
        return model;
    }
    
    // Insert product
    @RequestMapping(value = "InsertProduct", method = RequestMethod.GET)
    public ModelAndView initInsertProduct() {
        ModelAndView model = new ModelAndView("Admin/InsertProduct");
        Products product = new Products();
        List<Discount> listDiscount = discountModel.getAllDiscount();
        List<Categorys> listCatalog = catalogModel.getAllCatalog();
        model.getModelMap().put("newProduct", product);
        model.getModelMap().put("listCatalog", listCatalog);
        model.getModel().put("listDiscount", listDiscount);
        return model;
    }

    @RequestMapping(value = "InsertProduct", method = RequestMethod.POST)
    public String insertProduct(@ModelAttribute("newProduct") Products product, ModelMap mm, HttpServletRequest request) throws FileUploadException {
        List<String> img = new ArrayList<String>();
        String path = request.getRealPath("/jsp/Fontend/images/");
        path = path.substring(0, path.indexOf("\\build"));
        path = path + "\\web\\jsp\\Fontend\\images";
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload uploader = new ServletFileUpload(factory);
        try {
            List<FileItem> lst = uploader.parseRequest(request);
            for (FileItem fileItem : lst) {
                if (fileItem.isFormField() == false) {
                    if ("images".equals(fileItem.getFieldName())) {
                        product.setImages(fileItem.getName());
                    } else if ("imageHover".equals(fileItem.getFieldName())) {

                        img.add(fileItem.getName());
                    }

                    //upload to folder
                    fileItem.write(new File(path + "/" + fileItem.getName()));
                } else {
                    String name = fileItem.getFieldName();
                    String value = fileItem.getString();
                    if(name.equals("productName")) {
                        product.setProductName(value);
                    } else if (name.equals("priceInput")) {
                        product.setPriceInput(Float.parseFloat(value));
                    } else if (name.equals("priceOutput")) {
                        product.setPriceOutput(Float.parseFloat(value));
                    } else if (name.equals("quantity")) {
                        product.setQuantity(Integer.parseInt(value));
                    } else if (name.equals("status")) {
                        product.setStatus(Integer.parseInt(value));
                    } else if (name.equals("discription")){
                        product.setDiscription(value);
                    }else if (name.equals("categoryId")) {
                        product.setCategoryId(Integer.parseInt(value));
                    }else if (name.equals("discountId")) {
                        product.setDiscountId(Integer.parseInt(value));
                    }else if (name.equals("unit")) {
                        product.setUnit(value);
                    }
                    
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        boolean check = productModel.insertProduct(product);

        if (check) {
            return "redirect:HomeBackend.htm";
        } else {
            mm.put("message", "Thêm mới không thành công");
            return "Admin/InsertProduct";
        }
    }
    
    // Update product
    @RequestMapping(value = "UpdateProduct", method = RequestMethod.GET)
    public ModelAndView InitUpdateProduct(@RequestParam("Id")int id){
        ModelAndView model=new ModelAndView("Admin/UpdateProduct");
        Products product=productModel.getProductById(id);
        List<Discount> listDiscount = discountModel.getAllDiscount();
        List<Categorys> listCatalog = catalogModel.getAllCatalog();
        model.getModelMap().put("updateProduct", product);
        model.getModelMap().put("listCatalog", listCatalog);
        model.getModel().put("listDiscount", listDiscount);
        return model;
    }
    
    @RequestMapping(value = "UpdateProduct",method = RequestMethod.POST)
    public String UpdateProduct(@ModelAttribute("updateProduct") Products product, ModelMap mm) throws ParseException {
        boolean result = false;
        result = productModel.updateProduct(product);
        if (result) {
            return "redirect:AllProduct.htm";
        } else {
            mm.put("message", "Sửa thẻ không thành công.");
            return "Admin/UpdateProduct";
        }
    }
    
    //Update image product
    @RequestMapping(value = "UpdateImageProduct", method = RequestMethod.GET)
    public ModelAndView InitUpdateImageProduct(@RequestParam("Id")int id){
        ModelAndView model=new ModelAndView("Admin/UpdateImageProduct");
        Products product=productModel.getProductById(id);
        model.getModelMap().put("updateImageProduct", product);
        return model;
    }
    
    @RequestMapping(value = "UpdateImageProduct",method = RequestMethod.POST)
    public String UpdateImageProduct(@ModelAttribute("updateImageProduct") Products product, ModelMap mm) throws ParseException {
        boolean result = false;
        result = productModel.updateImageProduct(product);
        if (result) {
            return "redirect:AllProduct.htm";
        } else {
            mm.put("message", "Sửa thẻ không thành công.");
            return "Admin/UpdateImageProduct";
        }
    }
    
    // Delete product
    @RequestMapping(value = "deleteProduct")
    public String deleteProduct(HttpSession session, @RequestParam("Id") int id){
        boolean check = false;
        check = productModel.deleteProduct(id);
        if (check) {
            return "redirect:AllProduct.htm";
        }else{
            return "error";
        }
    }

    // Category
    // Get all categorys
    @RequestMapping(value = "/AllCatalog")
    public ModelAndView GetAllCatalog(HttpSession session) {
        ModelAndView model;
        if (AccountModel.CheckUrl(session)) {
            model = new ModelAndView("Admin/Catalog");
            List<GetAllCategoryDTO> list = catalogModel.getAllCategoryDTO();
            model.getModelMap().put("listCatalog", list);
        } else {
            model = new ModelAndView("Admin/Login");
            User user = new User();
            model.getModelMap().put("user", user);
        }
        return model;
    }

    // Insert category
    @RequestMapping(value = "InsertCatalog", method = RequestMethod.GET)
    public ModelAndView initInsertCatalog(HttpSession session) {
        ModelAndView model;
        if (AccountModel.CheckUrl(session)) {
            model = new ModelAndView("Admin/InsertCatalog");
            Categorys catalog = new Categorys();
            List<Categorys> list = catalogModel.getAllCatalog();
            List<Supplier> listProvider = providerModel.getAllSupplier();
            List<Season> listSeason = seasonModel.getAllSeason();
            model.getModelMap().put("listCatalog", list);
            model.getModel().put("listProvider", listProvider);
            model.getModel().put("listSeason", listSeason);
            model.getModelMap().put("newCatalog", catalog);
        } else {
            model = new ModelAndView("Admin/Login");
            User user = new User();
            model.getModelMap().put("user", user);
        }
        return model;
    }
    
    @RequestMapping(value = "InsertCatalog", method = RequestMethod.POST)
    public String InsertCatalog(@ModelAttribute("newCatalog") Categorys catalog, ModelMap mm, HttpServletRequest request) {
        String path = request.getRealPath("/jsp/Fontend/images/");
        path = path.substring(0, path.indexOf("\\build"));
        path = path + "\\web\\jsp\\Fontend\\images";
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload uploader = new ServletFileUpload(factory);
        try {
            List<FileItem> lst = uploader.parseRequest(request);
            for (FileItem fileItem : lst) {
                if (fileItem.isFormField() == false) {
                    //path
//                    catalog.setImages(fileItem.getName());
                    //upload to folder
                    fileItem.write(new File(path + "/" + fileItem.getName()));
                } else {
                    String name = fileItem.getFieldName();
                    String value = fileItem.getString();
                    if (name.equals("categoryName")) {
                        catalog.setCategoryName(value);
                    } else if (name.equals("descriptions")) {
                        catalog.setDescriptions(value);
                    } else if (name.equals("supplierId")) {
                        catalog.setSupplierId(Integer.parseInt(value));
                    } else if (name.equals("seasonId")) {
                        catalog.setSeasonId(Integer.parseInt(value));
                    }
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        boolean check = catalogModel.insertCatalog(catalog);
        if (check) {
            return "redirect:AllCatalog.htm";
        } else {
            mm.put("message", "Thêm mới không thành công");
            return "Admin/InsertCatalog";
        }
    }
    
    // Upadte category
    @RequestMapping(value = "UpdateCatalog", method = RequestMethod.GET)
    public ModelAndView InitUpdateCatalog(@RequestParam("Id") int id) {
        ModelAndView model = new ModelAndView("Admin/UpdateCatalog");
        Categorys catalog = catalogModel.GetCatalogById(id);
        List<Supplier> listProvider = providerModel.getAllSupplier();
        List<Season> listSeason = seasonModel.getAllSeason();
        model.getModelMap().put("updateCatalog", catalog);
        model.getModel().put("listProvider", listProvider);
        model.getModel().put("listSeason", listSeason);
        return model;
    }
    
    @RequestMapping(value = "UpdateCatalog",method = RequestMethod.POST)
    public String UpdateCatalog(@ModelAttribute("updateCatalog") Categorys catalog, ModelMap mm) {
        boolean result = false;
        result = catalogModel.updateCatalog(catalog);
        if (result) {
            return "redirect:AllCatalog.htm";
        } else {
            mm.put("message", "Sửa thẻ không thành công.");
            return "Admin/UpdateCatalog";
        }
    }
    
    // Delete Category
    @RequestMapping(value = "deleteCategory")
    public String deleteCategory(HttpSession session, @RequestParam("Id") int id){
        boolean check = false;
        check = catalogModel.deleteCategory(id);
        if (check) {
            return "redirect:AllCatalog.htm";
        }else{
            return "error";
        }
    }

    // User
    // Get all User
    @RequestMapping(value = "AllUser")
    public ModelAndView GetAllUser() {
        ModelAndView model = new ModelAndView("Admin/User");
        List<User> list = userModel.GetAllUser();
        model.getModelMap().put("listUser", list);
        return model;
    }

    // Insert User
    @RequestMapping(value = "InsertUser", method = RequestMethod.GET)
    public ModelAndView InitInsertUser() {
        ModelAndView model = new ModelAndView("Admin/InsertUser");
        User user = new User();
        List<Group> list = groupModel.GetAllGroup();
        model.getModelMap().put("newUser", user);
        model.getModelMap().put("listGroup", list);
        return model;
    }

    @RequestMapping(value = "InsertUser", method = RequestMethod.POST)
    public String InsertUser(@ModelAttribute("newUser") User user, ModelMap mm, HttpServletRequest request) {
        boolean check = userModel.InsertUser(user);
        String email = request.getParameter("email");
        if (check) {
            return "redirect:AllUser.htm";
        } else if (checkEmail.checkEmailExist(email) == 0) {
            mm.put("message", "Email đã được dùng. Vui lòng điền email khác để đăng ký");
            return "Admin/InsertUser";
        } else {
            mm.put("message", "Thêm mới không thành công");
            return "Admin/InsertUser";
        }
    }

    // Group
    // Get All groups
    @RequestMapping(value = "AllGroup")
    public ModelAndView GetAllGroup() {
        ModelAndView model = new ModelAndView("Admin/Group");
        List<Group> list = groupModel.GetAllGroup();
        model.getModelMap().put("listGroup", list);
        return model;
    }

    // Insert Group
    @RequestMapping(value = "InsertGroup", method = RequestMethod.GET)
    public ModelAndView InitInsertGroup() {
        ModelAndView model = new ModelAndView("Admin/InsertGroup");
        Group group = new Group();
        model.getModelMap().put("newGroup", group);
        return model;
    }

    @RequestMapping(value = "InsertGroup", method = RequestMethod.POST)
    public String InsertGroup(@ModelAttribute("newGroup") Group group, ModelMap mm) {
        boolean check = groupModel.InsertGroup(group);
        if (check) {
            return "redirect:AllGroup";
        } else {
            mm.put("message", "Thêm mới không thành công");
            return "Admin/InsertGroup";
        }
    }

    // Order
    // Get all Order
    @RequestMapping(value = "AllOrder")
    public ModelAndView GetAllOrder() {
        ModelAndView model = new ModelAndView("Admin/Order");
        List<Order> list = orderModel.GetAllOrder();
        model.getModelMap().put("listOrder", list);
        return model;
    }

    
    @RequestMapping(value = "showUser", method = RequestMethod.GET)
    public ModelAndView showUser(@RequestParam("Id") int id) {
        ModelAndView model = new ModelAndView("Admin/showUser");
        User user = userModel.getUserById(id);
        model.getModelMap().put("user", user);
        return model;
    }
    
    @RequestMapping(value = "contact", method = RequestMethod.GET)
    public ModelAndView InitInsertContact() {
        ModelAndView model = new ModelAndView("Fontend/Contact");
        Contact contact = new Contact();
        model.getModelMap().put("newContact", contact);
        return model;
    }

    @RequestMapping(value = "contact", method = RequestMethod.POST)
    public String InsertContact(@ModelAttribute("newContact") Contact contact, ModelMap mm) {
        boolean check = contactModel.insertContact(contact);
        if (check) {
            return "redirect:homeFontend.htm";
        } else {
            mm.put("message", "Thêm mới không thành công");
            return "Fontend/Contact";
        }
    }
}

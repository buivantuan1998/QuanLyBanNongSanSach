/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Categorys;
import entity.ImageLink;
import entity.New;
import entity.Contact;
import entity.Post;
import entity.Products;
import entity.Season;
import entity.Supplier;
import entity.User;
import java.io.File;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import model.AccountModel;
import model.CatalogModel;
import model.NewModel;
import model.ContactModel;
import model.PaginationModel;
import model.PostModel;
import model.ProductModel;
import model.ProviderModel;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import util.ConnectionDB;

/**
 *
 * @author Win 10
 */
@Controller
public class FontendController {
    private ProductModel productModel;
    private CatalogModel catalogModel;
    private ProviderModel providerModel;
    private PaginationModel paginationModel;
    private PostModel postModel;
    private ContactModel contactModel;
    
    public FontendController() {
        productModel=new ProductModel();
        catalogModel = new CatalogModel();
        providerModel = new ProviderModel();
        paginationModel = new PaginationModel();
        postModel = new PostModel();
        contactModel = new ContactModel();
    }
    @RequestMapping(value="getAllProduct")
    public ModelAndView getAllProduct(@RequestParam(value="page", defaultValue = "1") String page){
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        ModelAndView model=new ModelAndView("Fontend/Product");
        int pageInt = Integer.parseInt(page);
        int sizeRowofPage= 9;
        HashMap map=paginationModel.getDataPagination(pageInt, sizeRowofPage);        
        List<Categorys> listCatalog=catalogModel.getAllCatalog();
        List<Supplier> listProvider=providerModel.getAllSupplier();
        List<Products> listProduct = new ArrayList<>();
        String url = (String) map.get("url");//chuỗi phân trang
        try {
            ResultSet rs = (ResultSet) map.get("rs");
            while (rs.next()) {
               Products p = new Products();
                p.setId(rs.getInt("Id"));
                p.setProductName(rs.getString("ProductName"));
                p.setPriceInput(rs.getFloat("PriceInput"));
                p.setPriceOutput(rs.getFloat("PriceOutput"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setImages(rs.getString("Images"));
                p.setCreateDate(rs.getDate("CreateDate"));
                p.setUpdateDate(rs.getDate("UpdateDate"));
                p.setStatus(rs.getInt("Statuss"));
                p.setDiscription(rs.getString("Discription"));
                p.setCategoryId(rs.getInt("CategoryId"));
                p.setDiscountId(rs.getInt("DisCountId"));
                listProduct.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Connection conn = (Connection) map.get("conn");
            CallableStatement callSt = (CallableStatement) map.get("callSt");
            ConnectionDB.closeConnect(conn, callSt);
        }
        model.getModelMap().put("listCatalog", listCatalog);
        model.getModelMap().put("listProvider", listProvider);
        model.getModelMap().put("listProduct", listProduct);
        model.getModelMap().put("url", url);
        return model;
    }
    @RequestMapping(value = "getDataPagging")
    public ModelAndView getDataProductPagging(@RequestParam("page") String page) {
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        ModelAndView model = new ModelAndView("Fontend/Product");
        int pageInt = Integer.parseInt(page);
        int sizeRowofPage = 2;// số sản phẩm trên 1 trang
        HashMap map1 = paginationModel.getDataPagination(pageInt, sizeRowofPage);
        List<Categorys> listCatalog=catalogModel.getAllCatalog();
        List<Supplier> listProvider=providerModel.getAllSupplier();
        String url = (String) map1.get("url");
        List<Products> listProduct = new ArrayList<>();
        try {
            ResultSet rs = (ResultSet) map1.get("rs");
            while (rs.next()) {
                Products p = new Products();
                p.setId(rs.getInt("Id"));
                p.setProductName(rs.getString("ProductName"));
                p.setPriceInput(rs.getFloat("PriceInput"));
                p.setPriceOutput(rs.getFloat("PriceOutput"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setImages(rs.getString("Images"));
                p.setCreateDate(rs.getDate("CreateDate"));
                p.setUpdateDate(rs.getDate("UpdateDate"));
                p.setStatus(rs.getInt("Statuss"));
                p.setDiscription(rs.getString("Discription"));
                p.setCategoryId(rs.getInt("CategoryId"));
                p.setDiscountId(rs.getInt("DisCountId"));
                listProduct.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {

            Connection conn = (Connection) map1.get("conn");
            CallableStatement callSt = (CallableStatement) map1.get("callSt");
            ConnectionDB.closeConnect(conn, callSt);
        }
        model.getModelMap().put("listCatalog", listCatalog);
        model.getModelMap().put("listProduct", listProduct);
        model.getModelMap().put("listProvider", listProvider);
        model.getModelMap().put("url", url);
        return model;
    }
    @RequestMapping(value = "getProductByCatalog")
    public ModelAndView getProductByCatalog(@RequestParam("Id") int id){
        ModelAndView model=new ModelAndView("Fontend/Product");
        List<Products> listProduct=productModel.getProductByCatalogId(id);
        List<Categorys> listCatalog=catalogModel.getAllCatalog();
        List<Products> list=productModel.getAllProduct();
        model.getModelMap().put("listProductByCatalogId", listProduct);
        model.getModelMap().put("listCatalog", listCatalog);
        model.getModelMap().put("listProduct", list);
        return model;
    }
    
    @RequestMapping(value = "getProduct")
    public ModelAndView getProduct(@RequestParam("Id") int id) {
        ModelAndView model = new ModelAndView("Fontend/Product");
        List<Products> listProduct = productModel.getProductByCatalogId(id);
        model.getModelMap().put("listProduct", listProduct);
        return model;
    }
    
    @RequestMapping(value = "getProductDiscount")
    public ModelAndView getProductDiscount() {
        ModelAndView model = new ModelAndView("Fontend/AllProduct");
        List<Products> listProduct = productModel.getProductDiscount();
        model.getModelMap().put("listProduct", listProduct);
        return model;
    }
    
    @RequestMapping(value="getProductByProvider")
    public ModelAndView getProductByProvider(@RequestParam("Id") int id){
        ModelAndView model=new ModelAndView("Fontend/AllProduct");
        List<Products> listProduct=productModel.getProductByProviderId(id);
        model.getModelMap().put("listProduct", listProduct);
        return model;
    }
    
    @RequestMapping(value="productDetail")
    public ModelAndView getProductDetail(@RequestParam("Id") int id){
        ModelAndView model=new ModelAndView("Fontend/ProductDetail");
        Products product=productModel.getProductById(id);
        List<Products> listPrRe=productModel.getProductRelated(product);
        List<ImageLink> listImageLink=productModel.getImageLink(id);
        List<ImageLink> listImagelinkDetail=productModel.getImageLinkDetail(id);
        List<Categorys> listCatalog=catalogModel.getAllCatalog();
        model.getModelMap().put("product", product);
        model.getModelMap().put("listPrRe", listPrRe);
        model.getModelMap().put("imageLink", listImageLink);
        model.getModelMap().put("listImagelinkDetail", listImagelinkDetail);
        model.getModelMap().put("listCatalog", listCatalog);
        return model;
    }
    @RequestMapping(value = "about")
    public ModelAndView about(){
        ModelAndView model=new ModelAndView("Fontend/About");
        return model;
    }
    @RequestMapping(value="post")
    public ModelAndView newPost(){
        ModelAndView model=new ModelAndView("Fontend/New");
        List<Post> newPost=postModel.getAllPost();
        model.getModelMap().put("newPost", newPost);
        return model;
    }
   @RequestMapping(value="PostDetail")
   public ModelAndView postDetail(@RequestParam("Id") int id){
       ModelAndView model= new ModelAndView("Fontend/NewDetail");
       Post p=postModel.getPostById(id);
       model.getModelMap().put("postDetail", p);
       return model;
   }
   
//    @RequestMapping(value = "contact")
//    public ModelAndView contact(){
//        ModelAndView model=new ModelAndView("Fontend/Contact");
//        return model;
//    }
}

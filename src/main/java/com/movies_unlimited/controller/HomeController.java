package com.movies_unlimited.controller;

import com.movies_unlimited.Ultil.AccountUltil;
import com.movies_unlimited.entity.*;
import com.movies_unlimited.entity.enums.ActiveStatus;
import com.movies_unlimited.entity.enums.Role;
import com.movies_unlimited.service.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.*;
import java.util.regex.Pattern;

@Slf4j
@RequiredArgsConstructor
@Controller
public class HomeController {
    private final ProductService productService;
    private final FavoriteService favoriteService;
    private final CategoryService categoryService;
    private final AccountService accountService;
    private final CommentService commentService;
    private final AccountRoleService accountRoleService;

    @RequestMapping(value = {"", "/", "/home"}, method = RequestMethod.GET)
    public String home(Model model, @RequestParam(value = "page", required = false) Integer page) {
        if (page == null || page <= 0) {
            page = 1;
        }
        Page<ProductEntity> productsPage = productService.getProductsActive(page);
        List<ProductEntity> productsList = productsPage.getContent();
        List<ProductEntity> products = new ArrayList<>();
        for (int i = 0; i < productsList.size(); i++) {
            ProductEntity product = productsList.get(i);
            List<FavoriteEntity> favs = favoriteService.getFavoritesByProductId(product.getId());
            product.setFavorites(favs);
            products.add(product);
        }
        Set<ProductEntity> products_recommend = productService.recommendMovie();
        model.addAttribute("page", productsPage.getTotalPages());
        model.addAttribute("products", products);
        model.addAttribute("products_recommend", products_recommend);
        return "home";
    }

    @RequestMapping(value = "/category", method = RequestMethod.GET)
    public String categoryPageLimit(Model model,
                                    @RequestParam("id") int id,
                                    @RequestParam(value = "page", required = false) Integer page,
                                    @RequestParam(value = "sort", required = false) String sort) {
        if (page == null || page <= 0) {
            page = 1;
        }
        Page<ProductEntity> productsPage = null;
        if (sort == null || sort.isEmpty()) {
            productsPage = productService.getProductByCategoryId(id, page, "none");
        } else {
            productsPage = productService.getProductByCategoryId(id, page, sort);
        }

        List<ProductEntity> productsList = productsPage.getContent();
        List<ProductEntity> products = new ArrayList<>();
        for (int i = 0; i < productsList.size(); i++) {
            ProductEntity product = productsList.get(i);
            List<FavoriteEntity> favs = favoriteService.getFavoritesByProductId(product.getId());
            product.setFavorites(favs);
            products.add(product);
        }
        model.addAttribute("category", categoryService.getCategoryById(id));
        model.addAttribute("page", productsPage.getTotalPages());
        model.addAttribute("products", products);
        return "category";
    }

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public String productPage(Model model, @RequestParam("id") int id) {
        ProductEntity product = productService.getProductById(id);
        model.addAttribute("product", product);
        List<CommentEntity> comments = commentService.getCommentsByProductId(id);
        model.addAttribute("comments", comments);
        model.addAttribute("favorites", favoriteService.countFavoriteByProductId(id));
        AccountEntity account = accountService.getAccountByEmail(AccountUltil.getAccount());
        if (account != null) {
            FavoriteEntity fav = favoriteService.getFavotiteByAccountIDAndProductID(account.getId(), id);
            if (fav != null) {
                model.addAttribute("favorited", true);
            } else {
                model.addAttribute("favorited", false);
            }
        } else {
            model.addAttribute("favorited", false);
        }
        return "product";
    }



    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String viewRegister(Model model) {
        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registerAccount(Model model, @ModelAttribute(value = "account") AccountEntity account, @ModelAttribute(value = "password1") String password1, @ModelAttribute(value = "password2") String password2) {

        if (password1.length() < 5) {
            model.addAttribute("messageError", "Password must be greater than or equal to 5 characters");
            return "registration";
        }
        if (!password1.equals(password2)) {
            model.addAttribute("messageError", "Password is not the same, please check again");
            return "registration";
        }
        AccountEntity checkUsername = accountService.getAccountByEmail(account.getEmail());
        if (checkUsername != null) {
            model.addAttribute("messageError", "This username already exists");
            return "registration";
        }
        AccountEntity checkEmail = accountService.getAccountByEmail(account.getEmail());
        if (checkEmail != null) {
            model.addAttribute("messageError", "This email address already exists");
            return "registration";
        }
        account.setPassword(new BCryptPasswordEncoder().encode(password2));
        Set<AccountRoleEntity> accountRoleEntitys = new HashSet<>();
        accountRoleEntitys.add(accountRoleService.getAccountRolesByRole(Role.ROLE_USER));
        account.setAccountRoles(accountRoleEntitys);
        account.setStatus(ActiveStatus.ACTIVE);
        AccountEntity accountSaved = accountService.save(account);
        return "registration";
    }

    @GetMapping("/login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");
        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");
        return "login";
    }

    @GetMapping({"/welcome"})
    public String welcome(Model model) {
        return "welcome";
    }

}

package vn.hoidanit.laptopshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;
import vn.hoidanit.laptopshop.service.UserService;

import java.util.List;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService, UserRepository userRepository) {
        this.userService = userService;
    }

    // by default method is HTTP GET
    @RequestMapping("/")
    public String getHomePage(Model model) {
        List<User> listOfUsers = this.userService.getAllUsers();
        List<User> listOfEmailDanh = this.userService.getAllUsersEmail("danh.nguyenthanh@hcmut.edu.vn");

        for (User user : listOfUsers) {
            System.out.println("Users: " + user);
        }

        for (User user : listOfEmailDanh) {
            System.out.println("Users with danh's HCMUT email: " + user);
        }

        model.addAttribute("newUser", new User());
        // whenever access to this page => log message will be displayed
        // => browser request the page using GET
        System.out.println("LOG MESSAGE 1");
        return "hello";
    }

    // by default method is HTTP GET
    // This HTTP GET method is used to display the form)
    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        model.addAttribute("newUser", new User());
        // Refresh the page to see the log message => browser request the page using GET
        System.out.println("LOG MESSAGE 2");
        return "admin/user/create";
    }

    // using HTTP POST method to submit the form
    @RequestMapping(value = "/admin/user/create1", method = RequestMethod.POST)
    public String createUserPage(Model model, @ModelAttribute("newUser") User newUser) {
        System.out.println("LOG MESSAGE 3");
        System.out.println("This is a new user: " + newUser);
        System.out.println("User's email: " + newUser.getEmail());
        userService.handleSaveUser(newUser);
        return "hello";
    }

}

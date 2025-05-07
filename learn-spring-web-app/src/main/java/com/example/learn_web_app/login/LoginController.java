package com.example.learn_web_app.login;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class LoginController {

    private static final Logger logger = LogManager.getLogger(LoginController.class);
    private AuthenticationService authenticationService;

    @Autowired
    public LoginController(AuthenticationService authenticationService) {
        this.authenticationService = authenticationService;
    }

    //    @RequestMapping("login") //http://localhost:8080/login?name=Sakusan
//    public String login(@RequestParam String name, ModelMap model) {
//        model.put("name",name);
//        logger.info("Request param is {}", name);
//        return "login";
//    }

    @RequestMapping(value = "login", method = RequestMethod.GET) // http://localhost:8080/login
    public String goToLogin() {
        return "login";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String goToWelcome(@RequestParam String name, @RequestParam String password, ModelMap model) {
        if (authenticationService.authenticate(name,password)) {
            model.put("name",name);
            model.put("password",password);
            return "welcome";
        }

        model.put("errorMessage","Invalid login credentials. Try again");
        return "login";
    }
}

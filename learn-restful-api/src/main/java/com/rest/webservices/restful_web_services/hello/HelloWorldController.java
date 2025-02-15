package com.rest.webservices.restful_web_services.hello;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.web.bind.annotation.*;

import java.util.Locale;

@RestController
public class HelloWorldController {

    private MessageSource messageSource;

    @Autowired
    public HelloWorldController(MessageSource messageSource) {
        this.messageSource = messageSource;
    }

    @RequestMapping(method = RequestMethod.GET,path = "/hello-world-request")
    public String helloWorldRequest() {
        return "Hello World via RequestMapping";
    }

    @GetMapping(path = "/hello-world-get")
    public String helloWorldGet() {
        return "Hello World via GetMapping";
    }

    @GetMapping(path = "/hello-world-bean")
    public HelloWorldBean helloWorldBean() {
        return new HelloWorldBean("Hello World");
    }

    @RequestMapping("/search")
    public String search(@RequestParam("keyword") String keyword) {
        return "Search results for: " + keyword;
    }

    // Use Accept-Language header in request to pass in language
    // Accept-Language | de   -> picks up messages_de.properties
    @GetMapping("/hello-world-internationalised")
    public String helloWorldInternationalised() {
        Locale locale = LocaleContextHolder.getLocale();
        return messageSource.getMessage("good.morning.message",null,"Default Message", locale);
    }
}

package com.rest.webservices.restful_web_services.hello;

import org.springframework.web.bind.annotation.*;

@RestController
public class HelloWorldController {

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
}

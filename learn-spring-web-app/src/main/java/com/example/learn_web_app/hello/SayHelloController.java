package com.example.learn_web_app.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class SayHelloController {

    @RequestMapping("say-hello")
    @ResponseBody
    public String sayHello() {
        return "Hello!";
    }

    @RequestMapping("say-hello-html")
    @ResponseBody
    public String sayHelloInHtml() {
        StringBuffer sb = new StringBuffer();
        sb.append("<html>");
        sb.append("<head>");
        sb.append("<title> My First HTML Page - Changed</title>");
        sb.append("</head>");
        sb.append("<body>");
        sb.append("My first html page with body - Changed");
        sb.append("</body>");
        sb.append("</html>");

        return sb.toString();
    }

    @RequestMapping("say-hello-jsp")
    public String sayHelloJsp() {
        return "sayHello";
    }
}

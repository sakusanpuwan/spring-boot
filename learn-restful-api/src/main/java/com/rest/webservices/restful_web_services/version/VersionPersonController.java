package com.rest.webservices.restful_web_services.version;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class VersionPersonController {

    @GetMapping("/v1/person")
    public PersonV1 getV1Person(){
        return new PersonV1("Michael Scott");
    }

    @GetMapping("/v2/person")
    public PersonV2 getV2Person(){
        return new PersonV2("Michael","Scott");
    }

    @GetMapping(path = "person", params = "version=1")
    public PersonV1 getV1PersonViaParams(){
        return new PersonV1("Jim Halpert");
    }

    @GetMapping(path = "person", params = "version=2")
    public PersonV2 getV2PersonViaParams(){
        return new PersonV2("Jim","Halpert");
    }

    @GetMapping(path = "person/header", headers = "X-API-VERSION=1")
    public PersonV1 getV1PersonViaHeader(){
        return new PersonV1("Jim Halpert");
    }

    @GetMapping(path = "person/header", headers = "X-API-VERSION=2")
    public PersonV2 getV2PersonViaHeader(){
        return new PersonV2("Jim","Halpert");
    }
}

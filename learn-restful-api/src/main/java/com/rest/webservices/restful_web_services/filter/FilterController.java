package com.rest.webservices.restful_web_services.filter;

import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FilterController {

    @GetMapping("/static-filtering")
    public StaticFilterBean filter() {
        return new StaticFilterBean("value1","password","value3","value4");
    }

    @GetMapping("/dynamic-filtering")
    public MappingJacksonValue dynamicFilter() {
        DynamicFilterBean dynamicFilterBean = new DynamicFilterBean("value1","value2","value3","value4");

        MappingJacksonValue mappingJacksonValue = new MappingJacksonValue(dynamicFilterBean);
        SimpleBeanPropertyFilter filter = SimpleBeanPropertyFilter.filterOutAllExcept("field1","field2");
        FilterProvider filters = new SimpleFilterProvider().addFilter("DynamicBeanFilter",filter);
        mappingJacksonValue.setFilters(filters);

        return mappingJacksonValue;
    }

}

package com.in28minutes.learnspringframework.examples.g1;

import com.in28minutes.learnspringframework.exercises.DataService;
import jakarta.inject.Inject;
import jakarta.inject.Named;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

//@Component
@Named
class BusinessService{

    //@Autowired
    @Inject
    private DataSevice dataService;

    public void setDataService(DataSevice dataService) {
        this.dataService = dataService;
    }
    public DataSevice getDataService(){
        System.out.println("Getter performed");
        return dataService;
    }


}
//@Component
@Named
class DataSevice {

}
@Configuration
@ComponentScan
public class CDIContextLauncherApplication {

    public static void main(String[] args) {

        var context = new AnnotationConfigApplicationContext(CDIContextLauncherApplication.class);

        System.out.println(context.getBean(BusinessService.class).getDataService());
    }
}


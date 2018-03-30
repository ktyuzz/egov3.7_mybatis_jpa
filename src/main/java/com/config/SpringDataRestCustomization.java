//package com.config;
//
//import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
//import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurerAdapter;
//import org.springframework.http.MediaType;
//import org.springframework.stereotype.Component;
//import com.domain.CustomerCode;
//
//@Component
//public class SpringDataRestCustomization extends RepositoryRestConfigurerAdapter {
//    @Override
//    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config) {
//        config.setDefaultMediaType(MediaType.APPLICATION_JSON_UTF8); // new MediaType("application/vnd.api+json"));
//        config.useHalAsDefaultJsonMediaType(false);
//        config.exposeIdsFor(CustomerCode.class);
//    }
//}

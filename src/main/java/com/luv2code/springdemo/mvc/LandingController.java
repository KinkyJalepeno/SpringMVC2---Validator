package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LandingController {

    @RequestMapping("/")
    public String showPage(){

        return "LandingPage";
        /* this returns LandingPage to the Spring framework which adds in prefix and suffix
        as defined in the demo-servlet.xml - /WEB-INF/view/  and .jsp to call /WEB-INF/view/LandingPage.jsp */
    }
}


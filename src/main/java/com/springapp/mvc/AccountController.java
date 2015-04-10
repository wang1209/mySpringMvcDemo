package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by WY on 2015/4/9.
 */
@Controller
@RequestMapping("/account")
public class AccountController {
    @RequestMapping("/login")
    public String login(){

        return "/account/login";
    }
}

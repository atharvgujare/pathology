package com.sdr.error;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GlobalErrorController {

    @RequestMapping("/error")
    public String errorPage() {
        return "error";
    }
}

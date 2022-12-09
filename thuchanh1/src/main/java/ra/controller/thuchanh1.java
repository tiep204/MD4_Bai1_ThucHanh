package ra.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("thuchanhController")
public class thuchanh1 {
    @RequestMapping("hello123")
    public String helloWord(){
        return "hello";
    }
}

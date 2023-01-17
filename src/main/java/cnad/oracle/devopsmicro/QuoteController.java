package cnad.oracle.devopsmicro;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class QuoteController {

    @GetMapping
    public String getQuote(){
        return "The way to get started is to quit talking and begin doing. -Walt Disney";
    }
}

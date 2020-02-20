package com.example.infobez.controller;

import com.example.infobez.form.Form;
import com.example.infobez.form.Form3Version;
import com.example.infobez.service.CVSSService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import static java.lang.Math.min;

@RequiredArgsConstructor
@Controller
public class MainController {

    private final CVSSService cvssService;

    @GetMapping("/home")
    public String getHomePage() {
        return "home";
    }

    @GetMapping("/about")
    public String getAboutPage() {
        return "about";
    }

    @GetMapping("/result")
    public String getResultPage() {
        return "result";
    }

    @GetMapping("/cvssv2")
    public String getCVSSv2Page() {
        return "cvssv2";
    }

    @GetMapping("/cvssv3")
    public String getCVSSv3Page() {
        return "cvssv3";
    }

    @PostMapping("/cvssv2")
    public String getResultForCVSSv2(Form form, Model model) {
        String[] array = cvssService.getCvssv2Result(form);

        model.addAttribute("baseScore", array[0]);
        model.addAttribute("timeScore", array[1]);
        model.addAttribute("contextScore", array[2]);
        return "result";
    }

    @PostMapping("/cvssv3")
    public String getResultForCVSSv3(Form3Version form, Model model) {
        String[] array = cvssService.getCvssv3Result(form);

        model.addAttribute("baseScore", array[0]);
        model.addAttribute("timeScore", array[1]);
        model.addAttribute("contextScore", array[2]);
        return "result";
    }
}

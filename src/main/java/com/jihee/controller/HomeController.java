package com.jihee.controller;

import com.jihee.biz.shelter.ShelterService;

import com.jihee.biz.shelter.ShelterVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class HomeController {
    @Autowired
    ShelterService service;

    @RequestMapping("/")
    public String home() {
        return "index";
    }
    @RequestMapping("/list.cu")
    public String list(HttpSession session, Model model){
        session.setAttribute("category","cu");
        List<ShelterVO> list = service.getShelterList();
        model.addAttribute("list",list);
        return "/list";
    }
    @RequestMapping(value = "/shelterForm")

    public String shelterForm() {

        return "/shelterForm";

    }
    @RequestMapping(value = "/saveShelter", method = RequestMethod.POST)

    public String saveShelter(@ModelAttribute("ShelterVO") ShelterVO shelterVO

            , RedirectAttributes rttr) throws Exception {

        service.insertShelter(shelterVO);

        return "redirect:/list.cu";

    }
    @RequestMapping(value = "/getShelterContent", method = RequestMethod.GET)

    public String getShelterContent(Model model, @RequestParam("sname") String sname) throws Exception {
        model.addAttribute("shelterContent", service.viewShelter(sname));

        return "/shelterContent";
    }
    @RequestMapping(value = "inShelterContent", method = RequestMethod.GET)
    public String inShelterContent(Model model,@RequestParam("sname") String sname) throws Exception{
        ShelterVO shelterVO = new ShelterVO();
        shelterVO.setSname(sname);
        service.inShelter(shelterVO);
        model.addAttribute("shelterContent", service.viewShelter(sname));
        return "/shelterContent";
    }
    @RequestMapping(value = "outShelterContent", method = RequestMethod.GET)
    public String outShelterContent(Model model,@RequestParam("sname") String sname) throws Exception{
        ShelterVO shelterVO = new ShelterVO();
        shelterVO.setSname(sname);
        service.outShelter(shelterVO);
        model.addAttribute("shelterContent", service.viewShelter(sname));
        return "/shelterContent";
    }
    @RequestMapping(value = "/list.search", method = RequestMethod.GET)
    public String searchShelter(Model model ,@RequestParam("sname") String sname){
        ShelterVO vo = new ShelterVO();
        vo.setSname(sname);
        List<ShelterVO> list = service.getShelter(vo);
        model.addAttribute("list",list);
        return "list";
    }



}
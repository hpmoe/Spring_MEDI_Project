package com.mycom.mycontroller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mycom.domain.PatientVO;
import com.mycom.domain.tempvo;
import com.mycom.service.MediService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/medi/*")
@AllArgsConstructor
public class MediController {
	
	private MediService service;
	
	@GetMapping("/plist")
	public void plist(Model model) {
		model.addAttribute("plist", service.getListP());
	}
	
	//regout-p//
	@GetMapping("/deldel")
	public String deldel(@ModelAttribute("patient") PatientVO patient, Model model) {
		tempvo tt = new tempvo();
		tt.setPid(patient.getPatid());
		tt.setPwd(patient.getPatpw());
		service.removeP(tt);
		return "redirect:/";
	}
	
	//
	
	//view doctor list, patient side//
	@GetMapping("/dlist")
	public void dlist(@ModelAttribute("patient") PatientVO patient, Model model) {
		
	}
	@PostMapping("/dlist")
	public String dlist(PatientVO p,RedirectAttributes rttr) {
		if(service.modifyP(p)==false) {
			return "redirect:/err";
		};
		tempvo t = new tempvo();
		t.setPid(p.getPatid());
		t.setPwd(p.getPatpw());
		rttr.addFlashAttribute("patient",service.getP(t));
		return "redirect:/medi/pselect";
	}
	@GetMapping("/dlist2")
	public void dlist2(@ModelAttribute("patient") PatientVO patient, Model model) {
		model.addAttribute("doctors", service.getListD());
	}
	@PostMapping("/dlist2")
	public String dlist2() {
		return "";
	}
	//--view doctor list//
	
	//login patient//
	@GetMapping("/loginp")
	public void loginp() {
	}
	
	@PostMapping("/loginp")
	public String loginp(tempvo t, RedirectAttributes rttr) {
		rttr.addFlashAttribute("patient", service.getP(t));
		return "redirect:/medi/pselect";
	}
	///////////////////////
	
	//pselector///
	@GetMapping("/pselect")
	public void pselect(@ModelAttribute("patient") PatientVO patient, Model model) {
		
	}
	////
	
	//login doctor//
	@GetMapping("/logind")
	public void logind() {
	}
	//////////
	//register doctor//
	@GetMapping("/registerd")
	public void registerd() {
	}
	@PostMapping("/registerd")
	public void registerd_p() {
		
	}
	//--register doctor//
	
	//register patient//
	@GetMapping("/registerp")
	public void registerp() {
	}
	
	@PostMapping("/registerp")
	public String register(PatientVO p, RedirectAttributes rttr) {
		service.registerP(p);
		return "redirect:/";
	}
	//--register patient//
}

package mari.dojosurvey;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller

public class DojoSurveyController {
	
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
    @RequestMapping(value="/submit", method=RequestMethod.POST)
    public String code(HttpSession session, RedirectAttributes redirectAtt, @RequestParam(value="name") String name, @RequestParam(value="location") String location, @RequestParam(value="language") String language, @RequestParam(value="comment") String comment) {
		session.setAttribute("name", name);
//		System.out.println(name);
		session.setAttribute("location", location);
		session.setAttribute("language", language);
		session.setAttribute("comment", comment);
        return "redirect:/result";
    }
    
	@RequestMapping("/result")
	public String show(HttpSession session, Model model) {
		String name = (String) session.getAttribute("name");
		model.addAttribute("name", name);
		String location = (String) session.getAttribute("location");
		model.addAttribute("loc", location);
		String language = (String) session.getAttribute("language");
		model.addAttribute("lang", language);
		String comment = (String) session.getAttribute("comment");
		model.addAttribute("com", comment);
		return "result.jsp";
	}
}

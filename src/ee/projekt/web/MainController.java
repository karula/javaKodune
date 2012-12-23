package ee.projekt.web;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String main(){			
			File lck = new File("/usr/share/tomcat7/i377/Team07/db2.lck");
			lck.delete();		
		return "index";
	}
}

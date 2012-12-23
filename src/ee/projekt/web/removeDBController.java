package ee.projekt.web;

import java.io.File;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class removeDBController {
	
	@RequestMapping("/removeDB")
	public String removeDB(){	
		
		
		
		
			File lck = new File("/usr/share/tomcat7/i377/Team07");
			
			
			
		    for(int i =0 ;i<lck.list().length;i++)
		    {
		    	System.out.println(lck.list()[i]);
		    }
			
			

			
			
			
			
		return "redirect:";
	}
}

package net.aboutchurch.pvn.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jrdevel.aboutus.core.common.to.ListParams;
import com.jrdevel.aboutus.core.common.to.ResultObject;
import com.jrdevel.aboutus.core.site.article.ArticleService;

/**
 * @author Raphael Domingues
 *
 */
@Controller
public class HomePageController {
	
	
	@Autowired
	private ArticleService articleService;
	
	
	@RequestMapping(value="/home.action", method = RequestMethod.GET)
	public ModelAndView home(HttpServletRequest _request, HttpServletResponse _response, HttpSession session) throws Exception {
		
		ModelAndView model = new ModelAndView("home");
		
		ListParams param = new ListParams();
		param.setLimit(15);
		
		ResultObject resultObject = articleService.list(param);
		
		model.addObject("article", resultObject.getData());
		
		return model;
		
	}

}

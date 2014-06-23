package net.aboutchurch.pvn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jrdevel.aboutus.core.common.to.ResultObject;
import com.jrdevel.aboutus.core.site.article.ArticleService;

/**
 * @author Raphael Domingues
 *
 */
@Controller
public class ArticleController {
	
	@Autowired
	private ArticleService service;
	
	@RequestMapping(value="/article.action", method = RequestMethod.GET)
	public ModelAndView article(@RequestParam Integer id) throws Exception {
		
		ModelAndView model = new ModelAndView("article");
		
		ResultObject result = service.get(id);
		
		model.addObject("article",result.getData().get(0));
		
		return model;
		
	}

}

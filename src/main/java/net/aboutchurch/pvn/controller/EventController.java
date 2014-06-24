package net.aboutchurch.pvn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jrdevel.aboutus.core.calendar.EventService;
import com.jrdevel.aboutus.core.common.to.ResultObject;

/**
 * @author Raphael Domingues
 *
 */
@Controller
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	@RequestMapping(value="/evento/{id}/{start}/{end}", method = RequestMethod.GET)
	public ModelAndView article(@PathVariable Integer id, 
			@PathVariable String start, @PathVariable String end) throws Exception {
		
		ModelAndView model = new ModelAndView("/event");
		
		ResultObject result = eventService.get(id);
		
		model.addObject("event",result.getData().get(0));
		
		return model;
		
	}

}

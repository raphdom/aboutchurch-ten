package net.aboutchurch.pvn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jrdevel.aboutus.core.calendar.EventListDTO;
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
	
	@RequestMapping(value="/evento/{id}", method = RequestMethod.GET)
	public ModelAndView article(@PathVariable Integer id) throws Exception {
		
		ModelAndView model = new ModelAndView("/event");
		
		ResultObject resultEvents = eventService.listHomePage();
		List<Object> events = resultEvents.getData();
		
		EventListDTO currentEvent = null;
		
		for(Object event : events){
			EventListDTO ev = (EventListDTO) event;
			if (ev.getId()==id){
				currentEvent = ev;
				break;
			}
		}
		
		ResultObject result = eventService.get(currentEvent.getEid());
		
		model.addObject("event",result.getData().get(0));
		model.addObject("eventRecurrence",currentEvent);
		
		return model;
		
	}

}

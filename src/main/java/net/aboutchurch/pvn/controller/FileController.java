package net.aboutchurch.pvn.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jrdevel.aboutus.core.cloud.CloudService;

/**
 * @author Raphael Domingues
 *
 */
@Controller
public class FileController {
	
	
	@Autowired
	private CloudService service;
	
	@RequestMapping(value="/getThumb.action", method = RequestMethod.GET)
	public void get(@RequestParam Integer id, 
					@RequestParam(required=false) Integer dataType, 
					@RequestParam(required=false) Integer width, 
					@RequestParam(required=false) Integer height, 
					@RequestParam(required=false) boolean exactlySize,
					final HttpServletResponse response) throws Exception {

		byte[] fileByteArray = null;
		
		if(width != null && width > 0){
			fileByteArray = service.getThumb(id, width, height, exactlySize);
		}else{
			fileByteArray = service.getThumb(id, dataType);
		}

		if (fileByteArray != null && fileByteArray.length > 0){
			response.addHeader("Cache-Control", "public no-transform max-age=43200");
			response.getOutputStream().write(fileByteArray);
			response.getOutputStream().flush();
		}

	}

}

package com.bean.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.model.Movie;
import com.bean.service.MovieService;

/**
 * 分类列表，对应sort.jsp
 * 
 * @author hefeng
 *
 */
@Controller
public class SortList {
	@Resource
	private MovieService movieService;

	@RequestMapping("/sortList")
	public ModelAndView getSortList(String movieType) {

		List<Movie> moviesEqType = movieService.selectWithWhereAndOrder("movieType", movieType, "MovieUpdateDate", true,
				null);

		ModelAndView mv = new ModelAndView("sort");
		mv.addObject("movieType", movieType);
		mv.addObject("moviesEqType", moviesEqType);
		
		return mv;
		
	}

}

package com.bean.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.bean.model.Movie;
import com.bean.service.MovieService;
import com.bean.serviceImpl.UpdateTask;

/**
 * 首页 功能： 1.按评分显示视频（滚动的 2.视频分类显示视频（视频类型分类 3.搜索功能（视频名查找、影评名查找、用户查找
 * 4.每个视频需要有链接详情页链接
 * 
 * @author hefeng
 *
 */

@Controller
public class Index {
//	@Autowired
//	private MovieService movieService;//视频表
//	@Autowired
//	private UserMovieService userMovieService;//用户-视频关联表
	@Autowired
	private UpdateTask updateTask;
	
	@Resource
	private MovieService movieService;

	@RequestMapping("/index")
	public String index(Model model) {
		
		List<Movie> moviesInSlidey = movieService.selectWithOrder("5", "movieScore", true);
		List<Movie> moviesInOwl = movieService.selectWithOrder("9", "movieScore", true);
		List<Movie> specialMovies = movieService.selectWithOrder(null, "movieScore", true);
		List<Movie> highRatingsMovies = movieService.selectWithOrder(null, "movieWatch", true);
		List<Movie> highScoreMovies = movieService.selectWithOrder(null, "movieScore", true);
		List<Movie> newestMovies = movieService.selectWithOrder(null, "movieUpdateDate", true);
		List<Movie> popularMovies = movieService.selectWithOrder(null, "movieWatch", true);
		
		
		
		model.addAttribute("moviesInSlidey", moviesInSlidey);
		model.addAttribute("moviesInOwl", moviesInOwl);
		model.addAttribute("specialMovies", specialMovies);
		model.addAttribute("highRatingsMovies", highRatingsMovies);
		model.addAttribute("highScoreMovies", highScoreMovies);
		model.addAttribute("newestMovies", newestMovies);
		model.addAttribute("popularMovies", popularMovies);
		

		return "index";
		
	}

	@ResponseBody
	@RequestMapping("/getType")
	public List<String> getType() {

		List<String> movieTypes = movieService.selectSingleCol(true, "movieType", null);

		return movieTypes;
	}

	@RequestMapping("/search")
	public String search(String keyword, Model model) {

		List<Movie> searchResults = movieService.search(keyword);
		model.addAttribute("searchResults", searchResults);

		return "result";
	}

}

package com.bean.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.model.Movie;
import com.bean.service.MovieService;

/**
 * 排行榜列表 功能： 1.排列并显示视频（评分逆序 2.详情页跳转 3.影评页跳转
 * 
 * @author hefeng
 *
 */
@Controller
public class RankingList {
//	@Autowired
//	private UserMovieService userMovieService;
	@Resource
	private MovieService movieService;

	@RequestMapping("/rankingList")
	public String getRankingList(Model model) {

		List<Movie> highScoreMovies = movieService.selectWithOrder(null, "movieScore", true);
		model.addAttribute("highScoreMovies", highScoreMovies);

		return "rank";
	}

}

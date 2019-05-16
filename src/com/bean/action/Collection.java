package com.bean.action;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.model.MovieCollection;
import com.bean.service.CollectionService;
import com.bean.service.MovieCollectionService;

/**
 * 收藏夹页面 功能： 1.根据用户id，查找该用户所有收藏的视频，并显示对应信息
 * 
 * @author hefeng
 *
 */
@Controller
public class Collection {

	@Autowired
	private MovieCollectionService movieCollectionService;

	@RequestMapping("/MovieCollection")
	public String movieCollection(Integer page, Model model, HttpServletRequest request, HttpServletResponse response) {
		String userID = (String) request.getSession().getAttribute("userid");
		System.out.println(request.getSession().getAttribute("userid"));
		int count = 12;// 每页显示item个数

		Integer totalCollectionCount = movieCollectionService.queryTotalCollectionCount(userID);
		if (page == null || page > Math.ceil((double) totalCollectionCount / count)) {
			page = 1;// 超过页数直接显示第一页
		}
		HashMap<String, Object> map = new HashMap<>();

		map.put("userID", userID);
		map.put("before", (page - 1) * count);
		map.put("after", count);

		List<MovieCollection> movieCollections = movieCollectionService.selectMovieCollectionsById(map);

		model.addAttribute("movieCollections", movieCollections);
		model.addAttribute("pageCollectionCount", Math.ceil(totalCollectionCount.doubleValue() / count));
		model.addAttribute("currentPage", page);
		return "collection";
	}

	@RequestMapping("/MovieUpdateCollection")
	public @ResponseBody Map<String, Object> movieUpdateCollection(Model model, HttpServletRequest request,
			HttpServletResponse response) {

		String type = request.getParameter("type");
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		String userID = (String) request.getSession().getAttribute("userid");
		if (type.equals("delete")) {
			String movieID = request.getParameter("movieID");
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("movieID", movieID);
			map.put("userID", userID);
			Integer result = movieCollectionService.delectMovieCollection(map);
			if (result == 1) {
				resultMap.put("result", "success");
				return resultMap;
			} else {
				resultMap.put("result", "fail");
				return resultMap;
			}
		} else if (type.equals("collect")) {
			String movieID = request.getParameter("movieID");
			MovieCollection mc = new MovieCollection();
			mc.setCollectionsID(UUID.randomUUID().toString());
			mc.setMovieID(movieID);
			mc.setUserID(userID);
			mc.setSaveTime(new Date());
			Integer result = movieCollectionService.insertMovieCollection(mc);
			if (result == 1) {
				resultMap.put("result", "success");
				return resultMap;
			} else {
				resultMap.put("result", "fail");
				return resultMap;
			}
		}
		return null;
	}
}

package com.bean.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bean.model.Movie;
import com.bean.service.MovieService;

/**
 * 上传（待实现 功能： 1.上传视频
 * 
 * @author hefeng
 *
 */
@Controller
public class Upload {
	@Autowired
	private MovieService movieService;

	@RequestMapping("/upload")
	public String onUpload() {

		return "upload";

	}

	@RequestMapping("/addmovie")
	public String fileUpload(MultipartFile[] file, Movie movie, HttpServletRequest request, String videoname,
			String videotype, String videointro) throws IOException {

		String movieid = UUID.randomUUID().toString().replaceAll("-", "");
		videoname = request.getParameter("videoname");
		videointro = request.getParameter("videointro");
		videotype = request.getParameter("videotype");

		movie.setUserid((String) request.getSession().getAttribute("userid"));
		movie.setMovieid(movieid);
		movie.setMoviename(videoname);
		movie.setMovieintroduction(videointro);
		movie.setMovietype(videotype);

		movie.setMovielike(0);
		movie.setMoviescore(0.0);
		movie.setMoviewatch(0);
		movie.setMovieupdatedate("2019-5-2");

		int count = 1;
		for (MultipartFile mf : file) {
			if (!mf.isEmpty()) {
				// 获取文件的扩展名
				String ext = FilenameUtils.getExtension(mf.getOriginalFilename());

				if (count == 1) {
					// 以绝对路径保存重名命后的图片
					mf.transferTo(new File("C:/Users/ZKEIRS/Desktop/project/backup3/movie/WebContent/static/pictures"
							+ "/" + movieid + "." + ext));
				} else if (count == 2) {
					mf.transferTo(new File("C:/Users/ZKEIRS/Desktop/project/backup3/movie/WebContent/static/videos"
							+ "/" + movieid + "." + ext));
				}
			}
			count++;
		}

		movieService.insert(movie);

		return "redirect:/index.do";
	}

	@RequestMapping("showMyupload")
	public String showMyUpload(HttpServletRequest request, Model model) {

		List<Movie> myUploads = movieService.selectWithUser((String) request.getSession().getAttribute("userid"));
		model.addAttribute("myUploads", myUploads);

		return "showMyupload";
	}

}

package com.sl.sys.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sl.sys.biz.CommentszBiz;
import com.sl.sys.biz.InformationzBiz;
import com.sl.sys.entity.Comments;
import com.sl.sys.entity.Information;

@Controller
@RequestMapping("/Commentsz")
public class CommentszControl {
	@Resource
	private CommentszBiz commentszBiz;
	/**
	 *查询留言表所有信息
	 * @param m
	 * @return
	 */
	@RequestMapping("/showCommentss")
	public String showList(Model m) {
		List<Comments> noList= commentszBiz.queryCommentss();
		m.addAttribute("noList", noList);
		return "infos/Message";
	}
	@RequestMapping("/deleteComments")
	public String deleteComments(Comments c,HttpServletResponse resp) throws IOException{
		resp.setContentType("text/html;charset=utf-8");
		commentszBiz.deleteComments(c);
		return "redirect:/Commentsz/showCommentss";
	}
	@RequestMapping("/getOne")
	@ResponseBody
	public Comments getOne(Comments c) {
		return commentszBiz.queryComments(c);
	}
	
}


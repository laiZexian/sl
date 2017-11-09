package com.sl.sys.control;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sl.sys.biz.FmtBiz;
import com.sl.sys.entity.Fmt;

@Controller
@RequestMapping("/fmt")
public class FmtControl {
	@Resource
	private FmtBiz fmtBiz;
	@RequestMapping("/ser")
	public String ser(Fmt f,Model m) {
		List<Fmt>fmtList = fmtBiz.queryFmts(f);
		m.addAttribute("fmtlist", fmtList);
		m.addAttribute("names", f.getFmtName());
		return "users/search";
	}
}

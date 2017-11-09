package com.sl.sys.control;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sl.sys.biz.DictionaryBiz;
import com.sl.sys.entity.Dictionary;
import com.sl.sys.entity.Message;
import com.sl.sys.entity.Pager;

@Controller
@RequestMapping("/dictionary")
public class DictionaryControl {
	
	@Resource
	private DictionaryBiz dictionaryBiz;
	
	/**
	 * 查询
	 * @param d
	 * @param m
	 * @param pageNo
	 * @return
	 */
	@RequestMapping("/queryDics")
	public String getDictionary(Dictionary d,Model m,@RequestParam(value="pageNo",required=false,defaultValue="1")int pageNo) {
		Pager<Dictionary> pages =dictionaryBiz.queryDictionarys(d, pageNo, 10);
		m.addAttribute("pages",pages);
		m.addAttribute("dicType", d.getDicType());
		return "users/dic";
	}
	
	/**
	 * 查询单个对象
	 * @param d
	 * @param m
	 * @return
	 */
	@RequestMapping("/queryDic")
	@ResponseBody
	public Dictionary getDic(Dictionary d) {
		Dictionary dic =dictionaryBiz.queryDictionary(d);
		
		return dic;
	}
	/**
	 * 添加单个对象
	 * @param d
	 * @return
	 */
	@RequestMapping("/addDic")
	@ResponseBody
	public String addDic(Dictionary d) {
		String message ="0";
		if(dictionaryBiz.addDictionary(d)) {
			message="1";
		}
		return message;
	}
	/**
	 * 删除单个对象
	 * @param d
	 * @return
	 */
	@RequestMapping("/delDic")
	@ResponseBody
	public String delDic(Dictionary d) {
		if(dictionaryBiz.delDictionary(d)) {
			return "1";
		}
		System.out.println(d.getDicCode());
		return "0";
	}
	/**
	 * 修改单个对象
	 * @param d
	 * @return
	 */
	@RequestMapping("/updateDic")
	@ResponseBody
	public Message updateDic(Dictionary d) {
		System.out.println("编码："+d.getDicCode());
		System.out.println("名字："+d.getDicName());
		System.out.println("描述："+d.getDicSpec());
		System.out.println("类型："+d.getDicType());
		System.out.println("值："+d.getDicValue());
		Message mess =new Message("0");
		if(dictionaryBiz.updateDictionary(d)) {
			mess.setMess("1");
		}
		return mess;
	}
	/**
	 * 使用Ajax验证字典编码的唯一
	 * @param d
	 * @return
	 */
	@RequestMapping("/send")
	@ResponseBody
	public String isOne(Dictionary d) {
		Dictionary dic =dictionaryBiz.queryDictionary(d);
		String message="false";
		if (null!=dic) {
			message="true";
		}
		return message;
	}

}

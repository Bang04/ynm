package kr.ko.ym.schedule.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ko.ym.schedule.service.ScheduleService;


@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleService scheduleService;
	
	Logger log = LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping(value="/schedule/list", method=RequestMethod.POST)
	@ResponseBody
	public List<Map<String,Object>> selectSchedule(@RequestParam Map<String,Object>param) throws Exception {		
		List<Map<String,Object>>list = scheduleService.selectSchedule(param);		
		return list;	
	}
	
	
	@RequestMapping(value="/schedule/insert", method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> insertSchedule(@RequestParam Map<String,Object>param) throws Exception {		
		return scheduleService.insertSchedule(param);	
	}

}

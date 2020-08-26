package kr.ko.ym.schedule.service;

import java.util.List;
import java.util.Map;

public interface ScheduleService {

	Map<String, Object> insertSchedule(Map<String, Object> param) throws Exception;

	List<Map<String, Object>> selectSchedule(Map<String, Object> param) throws Exception;

}

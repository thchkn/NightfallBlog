package pers.tzl.nightfall.nightfallserver;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;

@SpringBootTest
class NightfallserverApplicationTests {


	@Autowired
	private RedisTemplate redisTemplate;


	@Test
	public void testSelect() {
//		List<UserInfoTab> userInfoTabs = userInfoTabMapper.selectList(new QueryWrapper<>());
//		userInfoTabs.forEach(System.out::println);
//
//		Map<String, Object> map = new HashMap<>();
//		map.put("username","zhangs");
//		List<UserInfoTab> userInfoTabs1 = userInfoTabMapper.selectByMap(map);
//		userInfoTabs1.forEach(System.out::println);
//
//		List<Map<String, Object>> maps = userInfoTabMapper.selectMaps(new QueryWrapper<>());
//		maps.forEach(System.out::println);

//		Page<UserInfoTab> page = new Page<>();
//		UserInfoTab userInfoTab = new UserInfoTab();
//		userInfoTab.setUsername("zhangs");
//		QueryWrapper<UserInfoTab> queryWrapper = new QueryWrapper<>(userInfoTab);
//
//		page.setSize(2L);
//		Page<UserInfoTab> page1 = userInfoTabMapper.selectPage(page, queryWrapper);
//		List<UserInfoTab> records = page1.getRecords();
//		records.forEach(System.out::println);

		redisTemplate.opsForValue().set("name","zhangs");
	}

}

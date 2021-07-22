package pers.tzl.nightfall.nightfallserver;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@SpringBootApplication
@EnableSwagger2
@MapperScan("pers.tzl.nightfall.nightfallserver.mapper")
public class NightfallserverApplication {

	public static void main(String[] args) {
		SpringApplication.run(NightfallserverApplication.class, args);
	}

}

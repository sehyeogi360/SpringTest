package com.marondal.spring.test.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;


	@Configuration
	@MapperScan(basePackages="com.marondal.spring.test.*")// 이경로 내 모든 이거도 잘라서 붙여주기
	public class DatabaseConfig {
		
		
		@Bean//springExample 거 그대롤 복붙 임포트는 core.io
		public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
			
			SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
			sessionFactory.setDataSource(dataSource);
			//core.io
			Resource[] res = new PathMatchingResourcePatternResolver().getResources("classpath:mappers/*Mapper.xml");//경로 잡아
			sessionFactory.setMapperLocations(res);
			
			return sessionFactory.getObject();
		}
	}

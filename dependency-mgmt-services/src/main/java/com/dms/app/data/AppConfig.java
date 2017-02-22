/**
 * 
 */
package com.dms.app.data;


import java.beans.PropertyVetoException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.mchange.v2.c3p0.ComboPooledDataSource;

@Configuration
@ComponentScan
@EnableTransactionManagement
@PropertySource(value = { "classpath:application.properties" })
public class AppConfig{

@Value("${spring.datasource.c3p0.maxPoolSize}")
private int maxSize;

@Value("${spring.datasource.c3p0.minPoolSize}")
private int minSize;

@Value("${spring.datasource.c3p0.acquire_increment}")
private int acquireIncrement;


@Value("${spring.datasource.c3p0.max_statements}")
private int maxStatements;

@Value("${spring.datasource.url}")
private String url;

@Value("${spring.datasource.username}")
private String username;

@Value("${spring.datasource.password}")
private String password;

@Value("${spring.datasource.driver-class-name}")
private String driverClassName;

@Bean
public ComboPooledDataSource dataSource() throws PropertyVetoException {
    ComboPooledDataSource dataSource = new ComboPooledDataSource();
    dataSource.setMaxPoolSize(maxSize);
    dataSource.setMinPoolSize(minSize);
    dataSource.setAcquireIncrement(acquireIncrement);
    dataSource.setMaxStatements(maxStatements);
    dataSource.setJdbcUrl(url);
    dataSource.setPassword(password);
    dataSource.setUser(username);
    dataSource.setDriverClass(driverClassName);
    return dataSource;
}
}

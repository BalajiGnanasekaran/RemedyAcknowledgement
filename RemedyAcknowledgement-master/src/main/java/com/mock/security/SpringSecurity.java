package com.mock.security;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
// @ComponentScan(basePackages={"com.mock.controller","com.mock.service"})
@EntityScan(basePackages = { "com.mock.model" })
@EnableJpaRepositories(basePackages = { "com.mock.repository" })
@EnableWebSecurity
public class SpringSecurity extends WebSecurityConfigurerAdapter {

	@Autowired
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().dataSource(dataSource()).passwordEncoder(passwordEncoder())
				.usersByUsernameQuery("select user_name, user_password,user_enabled from user where user_name=?")
				.authoritiesByUsernameQuery(
						"select u.user_name as username, r.roles as role from user u INNER JOIN roles r on r.role_id = u.role_role_id where user_name = ?");
	}

	@Override
	public void configure(HttpSecurity http) throws Exception {

		http.authorizeRequests().antMatchers("/css/*", "/js/*", "/registration", "/login*").permitAll()
				// for this /add it will authenticated apart from that nothing
				// will be authenticated
				// .antMatchers("/add").authenticated()
				// for every request i.e /home, /add .. anything it will be
				// authenticated
				.anyRequest().authenticated().and().formLogin().loginPage("/login").defaultSuccessUrl("/home", true)
				// .failureUrl("/loginError").permitAll()
				.and().logout()
				// .logoutRequestMatcher(
				// new AntPathRequestMatcher("/login?logout")
				// )
				// .invalidateHttpSession(true)
				// .deleteCookies("JSESSIONID")
				.permitAll();

		http.csrf().disable();

	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/remedy");
		dataSource.setUsername("root");
		dataSource.setPassword("root");
		return dataSource;
	}

}

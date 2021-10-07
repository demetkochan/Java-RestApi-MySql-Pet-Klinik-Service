package com.works.config;

import com.works.services.UserService;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
public class ServiceSecurityConfig extends WebSecurityConfigurerAdapter {

    final UserService uService;

    public ServiceSecurityConfig(UserService uService) {
        this.uService = uService;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(uService).passwordEncoder(uService.encoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.
                httpBasic()
                .and()
                .authorizeRequests()
                .antMatchers("/customer/**").permitAll()
                .antMatchers("/animal/**").permitAll()
                .antMatchers("/agenda/**").hasRole("ADMIN")
                .antMatchers("/settings/**").permitAll()
                .antMatchers("/dashboard/**").permitAll()
                .antMatchers("/buying/**").permitAll()
                .antMatchers("/clinicalStatistics/**").permitAll()
                .antMatchers("/payAction/**").permitAll()
                .antMatchers("/vendor/**").permitAll()
                .antMatchers("/case/**").permitAll()
                .antMatchers("/vaccine/**").permitAll()
                .antMatchers("/sales/**").permitAll()
                .antMatchers("/depo/**").permitAll()
                .antMatchers("/category/**").permitAll()
                .antMatchers("/laboratuvar/").hasRole("DOCTOR")
                .and()
                .csrf().disable()
                .formLogin().disable()
                .logout().logoutUrl("/settings/logout").invalidateHttpSession(true);
        http.headers().frameOptions().disable();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/v2/api-docs",
                "/configuration/ui",
                "/swagger-resources/**",
                "/configuration/security",
                "/swagger-ui.html",
                "/webjars/**");
    }


}

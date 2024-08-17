package com.baar.os_deployment;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class OsDeploymentApplication {
@GetMapping("/")
public String welcome() {
	return "Welcome to OS Deployment";
}
	public static void main(String[] args) {
		SpringApplication.run(OsDeploymentApplication.class, args);
	}

}

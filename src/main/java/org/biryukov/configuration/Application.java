package org.biryukov.configuration;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "org.biryukov")
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}

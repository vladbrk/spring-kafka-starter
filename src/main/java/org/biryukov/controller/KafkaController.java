package org.biryukov.controller;


import org.biryukov.model.StarshipDto;
import org.biryukov.service.StarshipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalTime;

@RestController
@RequestMapping("/api")
public class KafkaController {

    @Autowired
    private StarshipService starshipService;

    @RequestMapping("/produce/{name}")
    public void produce(@PathVariable String name) {
        StarshipDto sh =  new StarshipDto();
        sh.setId(LocalTime.now().toNanoOfDay() / 1000000);
        sh.setName(name);
        starshipService.send(sh);
    }
}

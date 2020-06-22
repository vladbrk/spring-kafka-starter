package org.biryukov.service;

import org.biryukov.model.StarshipDto;

public interface StarshipService {
    void send(StarshipDto dto);
    void consume(StarshipDto dto);
    void produce();
}

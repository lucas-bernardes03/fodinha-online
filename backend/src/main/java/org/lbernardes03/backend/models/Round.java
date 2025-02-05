package org.lbernardes03.backend.models;

import lombok.Data;

import java.util.List;

@Data
public class Round {
    private String id;
    private List<PlayerCard> playedCards;
}

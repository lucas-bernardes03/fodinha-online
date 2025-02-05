package org.lbernardes03.backend.models;

import lombok.Data;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Data
public class Game {
    private String id;
    private List<Round> rounds;
    private Set<Player> players;

    public void addPlayer(Player player){
        if(this.players == null) this.players = new HashSet<>();
        this.players.add(player);
    }
}

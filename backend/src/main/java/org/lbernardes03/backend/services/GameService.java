package org.lbernardes03.backend.services;

import org.lbernardes03.backend.models.Game;
import org.lbernardes03.backend.models.Player;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class GameService {
    private static List<Game> games;

    public Game addPlayerToGame(Player player, String gameId){
        Optional<Game> optionalGame = games.stream().filter(g -> g.getId().equals(gameId)).findFirst();
        if(optionalGame.isPresent()){
            optionalGame.get().addPlayer(player);
            return optionalGame.get();
        }
        else return null;
    }
}

package org.lbernardes03.backend.controllers;

import org.lbernardes03.backend.models.dto.JoinGameDTO;
import org.lbernardes03.backend.services.GameService;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

@Controller
public class GameController {
    private final GameService gameService;
    public GameController(GameService gameService){
        this.gameService = gameService;
    }

    @MessageMapping("/join")
    @SendTo("/client/joinGame")
    public String joinGame(JoinGameDTO dto){
        return "PLAYER: " + dto.playerId + " JOINED THE GAME: " + dto.gameId;
    }
}

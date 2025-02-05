package org.lbernardes03.backend.controllers;

import org.lbernardes03.backend.models.Game;
import org.lbernardes03.backend.models.Player;
import org.lbernardes03.backend.services.GameService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(value = "/game")
public class GameController {
    private final GameService gameService;
    public GameController(GameService gameService){
        this.gameService = gameService;
    }

    @PostMapping("/join/{id}")
    public ResponseEntity<Game> joinGame(@PathVariable String id, @RequestBody Player player){
        Game game = gameService.addPlayerToGame(player, id);
        return ResponseEntity.ok(game);
    }
}

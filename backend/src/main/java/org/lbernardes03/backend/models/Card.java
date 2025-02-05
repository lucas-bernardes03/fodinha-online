package org.lbernardes03.backend.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Card {
    private String rank;
    private String suit;
    private Integer strength;

    public static List<Card> getNewDeck(){
        List<Card> deck = new ArrayList<>();
        deck.add(new Card("4", "Clubs", 14));
        deck.add(new Card("7", "Hearts", 13));
        deck.add(new Card("A", "Spades", 12));
        deck.add(new Card("7", "Diamonds", 11));

//      3
        deck.add(new Card("3", "Clubs", 10));
        deck.add(new Card("3", "Hearts", 10));
        deck.add(new Card("3", "Spades", 10));
        deck.add(new Card("3", "Diamonds", 10));

//      2
        deck.add(new Card("2", "Clubs", 9));
        deck.add(new Card("2", "Hearts", 9));
        deck.add(new Card("2", "Spades", 9));
        deck.add(new Card("2", "Diamonds", 9));

//      Aces
        deck.add(new Card("A", "Clubs", 8));
        deck.add(new Card("A", "Hearts", 8));
        deck.add(new Card("A", "Diamonds", 8));

//      Kings
        deck.add(new Card("K", "Clubs", 7));
        deck.add(new Card("K", "Hearts", 7));
        deck.add(new Card("K", "Spades", 7));
        deck.add(new Card("K", "Diamonds", 7));

//      Jacks
        deck.add(new Card("J", "Clubs", 6));
        deck.add(new Card("J", "Hearts", 6));
        deck.add(new Card("J", "Spades", 6));
        deck.add(new Card("J", "Diamonds", 6));

//      Queens
        deck.add(new Card("Q", "Clubs", 5));
        deck.add(new Card("Q", "Hearts", 5));
        deck.add(new Card("Q", "Spades", 5));
        deck.add(new Card("Q", "Diamonds", 5));

//      7
        deck.add(new Card("7", "Clubs", 4));
        deck.add(new Card("7", "Spades", 4));

//      6
        deck.add(new Card("6", "Clubs", 3));
        deck.add(new Card("6", "Hearts", 3));
        deck.add(new Card("6", "Spades", 3));
        deck.add(new Card("6", "Diamonds", 3));

//      5
        deck.add(new Card("5", "Clubs", 2));
        deck.add(new Card("5", "Hearts", 2));
        deck.add(new Card("5", "Spades", 2));
        deck.add(new Card("5", "Diamonds", 2));

//      4
        deck.add(new Card("4", "Clubs", 1));
        deck.add(new Card("4", "Hearts", 1));

//      4 of Spades
        deck.add(new Card("4", "Spades", 1));


        return deck;
    }
}

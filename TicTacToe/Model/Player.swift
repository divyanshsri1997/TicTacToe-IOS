//
//  Player.swift
//  TicTacToe
//
//  Created by Divyansh Srivastava on 27/02/20.
//

import Foundation

struct Player {
    
    var currentPlayer = 1
    var value = 0
    
    mutating func updatePlayerStatus(){
        if(currentPlayer == 1 ){
            value = 0 //  Value for finding the winner
            currentPlayer = 2 // Change the player after every click
        }
        else {
            value = 1
            currentPlayer = 1
        }
    }
    
}

//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Divyansh Srivastava on 19/02/20.
//

import Foundation
import UIKit
struct Board {
    
    var clickCount = 0
    var winner = Winner()
    var player = Player()
    var boardIndex = [-1, -1 , -1, -1, -1, -1, -1, -1, -1] //Stores the value of every board index the player taps on based on the value of button tag(here, button tag 0...8 acts as array index)
    var image = "" //It will store the name of image asset sent from image-selection alert box
    
    mutating func updateBoardStatus(buttonTag: Int) ->Int{
        player.updatePlayerStatus()
        clickCount += 1
        boardIndex[buttonTag] = player.value
        //check for winner after every click...
        return winner.getWinner(boardIndex: boardIndex)
    }
    
    mutating func updateBoardImage() -> String{
        let buttonImage = image
        image = image == "TTTO" ? "TTTX" : "TTTO"
        return buttonImage
    }
    
    mutating func resetBoard(){
        boardIndex = [-1, -1 , -1, -1, -1, -1, -1, -1, -1]
        clickCount = 0
        player.currentPlayer = 1
        winner.flag = -1
    }
}

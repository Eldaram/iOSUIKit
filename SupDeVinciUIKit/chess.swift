//
//  chess.swift
//  SupDeVinciUIKit
//
//  Created by COURS on 15/04/2024.
//

import Foundation

import UIKit

// Tiny chess
class chess {
    func runChess( ) {
        let pieces = ["◼︎", "♟", "♞", "♝", "♜", "♛", "♚", "▲", "▲", "▲", "◻︎", "♙", "♘", "♗", "♖", "♕", "♔", "△", "△", "△"]
        
        var grid:[Int] = Array(repeating: 0, count: 8*8)
        for i in 0..<8 {
            for j in 0..<8 {
                grid[i * 8 + j] = ((i + j % 2) % 2) * 10
            }
        }
        
        var board:[Int] = Array(grid)
        
        for i in 8..<16 {
            board[i] = 1
        }
        
        for i in (6*8)..<(7*8) {
            board[i] = 11
        }
        
        func printBoard(board:[Int]) {
            for i in 0..<8 {
                for j in 0..<8 {
                    print(pieces[board[i * 8 + j]], terminator: " ")
                }
                print()
            }
            print("\n\n\n")
        }
        
        
        printBoard(board:board)
        
        var x1:Int = 1
        var y1:Int = 0
        var x2:Int = 2
        var y2:Int = 0
        
        
        board[x2 * 8 + y2] = board[x1 * 8 + y1]
        board[x1 * 8 + y1] = grid[x1 * 8 + y1]
        
        printBoard(board:board)
    }
}

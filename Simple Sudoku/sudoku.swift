//
//  sudoku.swift
//  Simple Sudoku
//
//  Created by Marcus Stewart on 2018-08-13.
//  Copyright © 2018 mstwrtgames. All rights reserved.
//

import Foundation

class Sudoku
{
    private var board = [[Int]]()
    
    init(gridSz: Int) {
        for _ in 0..<gridSz
        {
            var row = [Int]()
            for _ in 0..<gridSz
            {
                row.append(0)
            }
            board.append(row)
        }
        
        
        fillGrid()
        
        print("\(board)")
    }
    
    
    private func fillGrid()
    {
        while(!boardFilled())
        {
            for i in 0..<board.count
            {
                for j in 0..<board.count
                {
                    board[i][j] = board.count.arc4random
                }
            }
        }
    }
    
    private func boardFilled() -> Bool
    {
        var filled = true
        for i in 0..<board.count
        {
            for j in 0..<board.count
            {
                if  (board[i][j] == 0)
                {
                    filled = false
                }
            }
        }
        
        return filled
    }
    
    
}

extension Int
{
    var arc4random: Int
    {
        if self > 0
        {
            return Int(arc4random_uniform(UInt32(self)))
        }
        else if self < 0
        {
            return -Int(arc4random_uniform(UInt32(abs(self))))
        }
        else
        {
            return 0
        }
    }
}

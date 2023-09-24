//
//  BoardView.swift
//  CFGHello
//
//  Created by Jade Soanes on 08/09/2023.
//

import SwiftUI

// Define a structure to represent the state of the checkers board
struct CheckersBoard {
    var cells: [[CheckerPiece?]] // Represents the grid of cells with optional CheckerPiece values
}

// Define a structure to represent a checkers piece (either black or red)
enum CheckerPiece {
    case black
    case red
}

struct BoardView: View {
    @State private var checkersBoard = CheckersBoard(cells: Array(repeating: Array(repeating: nil, count: Utils.maxCells), count: Utils.maxCells))
    
    var body: some View {
        VStack {
            ForEach(0 ..< Utils.maxCells) { row in
                HStack {
                    ForEach(0 ..< Utils.maxCells) { col in
                        let cell = checkersBoard.cells[row][col]
                        let isDarkCell = col.isMultiple(of: 2)
                        
                        Button(action: {
                            // Handle tapping a cell and moving a piece (add your logic here)
                            print("\(row),\(col) Tapped")
                            
                            // Example: Move a black piece to this cell
                            checkersBoard.cells[row][col] = .black
                        }) {
                            ZStack {
                                Image(systemName: "square.fill")
                                    .foregroundColor(isDarkCell ? Utils.colorDarkCell : Utils.colorLightCell)
                                
                                // Render a black or red circle if there's a piece in the cell
                                if let piece = cell {
                                    Circle()
                                        .foregroundColor(piece == .black ? .black : .red)
                                        .frame(width: 40, height: 40) // Adjust the size as needed
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct BoardView_Previews: PreviewProvider {
    static var previews: some View {
        BoardView()
    }
}

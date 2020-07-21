//
//  ContentView.swift
//  Foshan Flip
//
//  Created by Yogesh Sehgal on 17/07/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI
import Grid

struct ContentView: View {
    var body: some View {
            Grid(cardlist) { index in
                Card(char: index.character, isFaceUp: index.isFaceUp).padding(5)
        }.gridStyle(
            ModularGridStyle(columns: 2, rows: 3)
        )
    }
}

struct Card: View {
    var char: String
    @State var isFaceUp: Bool
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                if self.isFaceUp{
                    RoundedRectangle(cornerRadius: 20.0).foregroundColor(Color.red)
                }
                else{
                    RoundedRectangle(cornerRadius: 20.0).stroke(lineWidth: 2)
                    Text(self.char).font(Font.system(size: min(geometry.size.width, geometry.size.height) * 0.75))
                }
            }.onTapGesture {
                self.isFaceUp.toggle()
                print(self.char)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



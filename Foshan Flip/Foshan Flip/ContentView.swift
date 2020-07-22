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
        VStack {
                Grid(cardlist) { index in
                Card(char: index.character, isFaceUp: index.isFaceUp).padding(5)
            }.gridStyle(
                ModularGridStyle(columns: 2, rows: 5)
            )
        }
    }
}

struct Card: View {
    var char: String
    @State var isFaceUp: Bool
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                if self.isFaceUp{
                    ZStack {
                        RoundedRectangle(cornerRadius: 20.0).foregroundColor(.red)
                        Image("dragon").resizable().scaledToFit()
                    }
                }
                else{
                    ZStack{
                    RoundedRectangle(cornerRadius: 20.0).stroke(lineWidth: 2)
                    Text(self.char).font(Font.system(size: min(geometry.size.width, geometry.size.height) * 0.75))
                    }
                }
            }.onTapGesture {
                if self.isFaceUp == true{
                    self.isFaceUp.toggle()
                    selectedlist.append(self)
                    }
                if selectedlist.count>=2{
                check()
                    }
            }.transition(.scale)
            .animation(.default)
            }
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



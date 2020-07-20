//
//  ContentView.swift
//  Foshan Flip
//
//  Created by Yogesh Sehgal on 17/07/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(cardlist) { index in
                Card(char: index.character, isFaceUp: index.isFaceUp).padding()
            }
        }
    }
}

struct Card: View {
    var char: String
    var isFaceUp: Bool
    var body: some View {
        ZStack {
            if isFaceUp{
            RoundedRectangle(cornerRadius: 20.0).foregroundColor(Color.orange)
            }
            else{
                RoundedRectangle(cornerRadius: 20.0).stroke(lineWidth: 2)
                Text(char).fontWeight(.bold)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



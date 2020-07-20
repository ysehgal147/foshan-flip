//
//  Logic.swift
//  Foshan Flip
//
//  Created by Yogesh Sehgal on 20/07/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import Foundation

struct SingleCard: Identifiable{
  let id: Int
  let character: String
  let isFaceUp: Bool
}


var cardlist = [
    
    SingleCard(id: 0, character: "A", isFaceUp: false),
    SingleCard(id: 1, character: "B", isFaceUp: false),
    SingleCard(id: 2, character: "C", isFaceUp: true),
    SingleCard(id: 3, character: "D", isFaceUp: false)
    
    ]

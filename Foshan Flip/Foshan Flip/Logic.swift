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
     var isFaceUp: Bool = true
    
   }


var cardlist = [

SingleCard(id: 0, character: "A"),
SingleCard(id: 1, character: "B"),
SingleCard(id: 2, character: "C"),
SingleCard(id: 3, character: "D"),
SingleCard(id: 4, character: "E"),
SingleCard(id: 5, character: "F")

]





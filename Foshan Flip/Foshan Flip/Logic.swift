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

let a = dataset.randomElement()
let b = dataset.randomElement()
let c = dataset.randomElement()
let d = dataset.randomElement()
let e = dataset.randomElement()


var cardlist: Array<SingleCard> = [

SingleCard(id: 0, character: a!),
SingleCard(id: 1, character: b!),
SingleCard(id: 2, character: c!),
SingleCard(id: 3, character: d!),
SingleCard(id: 4, character: e!),
SingleCard(id: 5, character: a!),
SingleCard(id: 6, character: b!),
SingleCard(id: 7, character: c!),
SingleCard(id: 8, character: d!),
SingleCard(id: 9, character: e!)

].shuffled()
    

var selectedlist = [Card]()

func check() {
if selectedlist.count==2{
    
    selectedlist[0].isFaceUp=false
    selectedlist[1].isFaceUp=false
    
    if selectedlist[0].char==selectedlist[1].char{
        print("Correct")
        print(selectedlist)
        selectedlist=[]
    }
    else if selectedlist[0].char != selectedlist[1].char{
        print("In-Correct")
        selectedlist[0].isFaceUp=true
        selectedlist[1].isFaceUp=true
        print(selectedlist)
        selectedlist=[]
    }
}
}



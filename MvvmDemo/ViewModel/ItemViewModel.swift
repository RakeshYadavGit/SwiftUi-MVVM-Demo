//
//  ItemViewModel.swift
//  MvvmDemo
//
//  Created by Rakesh Yadav on 24/07/23.
//

import SwiftUI

class ItemViewModel: ObservableObject{
    @Published var isTurnedOn = false
    @Published var counter = 0
    @Published var itemList = [itemModel]()
    
    func incrementCounter(){
        counter += 1
    }
    
    func addItem(){
        let randomItem = ["Xbox", "PlayStation", "GameBoy"]
        let item = randomItem.randomElement()!
        let newItem = itemModel(name: item, descreption: "Item \(itemList.count + 1)")
        
        withAnimation{
            itemList.insert(newItem, at: 0)
        }
        
    }
    
}

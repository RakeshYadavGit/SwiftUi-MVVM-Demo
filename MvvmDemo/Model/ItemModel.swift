//
//  ItemModel.swift
//  MvvmDemo
//
//  Created by Rakesh Yadav on 24/07/23.
//

import Foundation

struct itemModel: Identifiable{
    var id = UUID()
    var name: String
    var descreption: String
    
    static var exampleItem = itemModel(name: "Xbox", descreption: "Sample Descreption")
}

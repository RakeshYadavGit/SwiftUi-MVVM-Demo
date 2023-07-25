//
//  ContentView.swift
//  MvvmDemo
//
//  Created by Rakesh Yadav on 24/07/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var itemViewModel = ItemViewModel()
    var body: some View {
        VStack {
            Toggle("Toggle switch", isOn:   $itemViewModel.isTurnedOn)
            
            HStack{
                Button("Increment"){
                    itemViewModel.incrementCounter()
                }
                Text("\(itemViewModel.counter)")
                    .bold()
                    .foregroundColor(Color.gray)
                    .padding()
            }
            
            List(itemViewModel.itemList){ item in
                HStack{
                    Text(item.name)
                    Spacer()
                    Text(item.descreption)
                }
                
            }
            .listStyle(.plain)
            .background(.thinMaterial)
            
            Button("Add Item"){
                itemViewModel.addItem()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

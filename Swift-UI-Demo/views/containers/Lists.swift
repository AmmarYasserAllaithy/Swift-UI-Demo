//
//  ListViews.swift
//  Swift-UI-Demo
//
//  Created by Mac on 25/11/2025.
//

import SwiftUI

struct MarvelCharacter: Identifiable {
    let id = UUID()
    let name: String
}

struct Lists: View {

    let fruits = ["Apple", "Banana", "Pineapple", "Mango"]
    let vegetables = ["Carrot", "Beetroot", "Radish", "Turnip"]
    let actors = ["Tom Hanks", "Will Smith", "Leonardo DiCaprio", "Brad Pitt"]

    let marvelCharacters: [MarvelCharacter] = [
        MarvelCharacter(name: "Iron Man"),
        MarvelCharacter(name: "Captain America"),
        MarvelCharacter(name: "Black Widow"),
        MarvelCharacter(name: "Hulk"),
    ]

    var body: some View {

        Group {
            List {
                Section("Fruits") {
                    ForEach(fruits, id: \.self) { it in
                        Text(it)
                    }
                }

                Section("Vegetables") {
                    ForEach(vegetables, id: \.self) { it in
                        Text(it)
                    }
                }
            }

            List(actors, id: \.self) { it in
                Text(it)
            }
            .listStyle(.grouped)

            List(marvelCharacters) { it in
                Text(it.name)
            }
            .listStyle(.plain)
        }
    }

}

#Preview {
    Lists()
}

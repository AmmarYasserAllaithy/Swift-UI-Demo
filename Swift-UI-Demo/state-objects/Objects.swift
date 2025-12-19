//
//  SwiftObjects.swift
//  Swift-UI-Demo
//
//  Created by Mac on 08/12/2025.
//

import Combine
import SwiftUI

//

class ViewModel: ObservableObject {

    @Published var fruits: [String] = []
    @Published var favorites: [String] = []

    init() {
        fillFruits()
    }

    func fillFruits() {
        fruits.append("Apple")
        fruits.append("Banana")
    }

    func addNewFruit(fruit: String) {
        fruits.append(fruit)
        print("Added: \(fruit)")
    }

    func toggleFavorite(fruit: String) {
        if let index = favorites.firstIndex(of: fruit) {
            favorites.remove(at: index)
        } else {
            favorites.append(fruit)
        }
    }

    func altToggleFavorite(fruit: String) {
        if favorites.contains(fruit) {
            favorites.removeAll { $0 == fruit }
        } else {
            favorites.append(fruit)
            favorites.sort()
        }
    }

}

//

struct Objects: View {

    @StateObject var viewModel: ViewModel = ViewModel()
    @State var navPath: [String] = []

    var body: some View {

        NavigationStack(path: $navPath) {

            List(viewModel.fruits, id: \.self) { fruit in

                HStack(alignment: .center, spacing: 16) {
                    Text(fruit)
                    // .fontWeight(
                    //    viewModel.favorites.contains(fruit) ? .bold : .regular
                    // )
                    // .onTapGesture {}

                    Spacer()

                    Button {
                        viewModel.toggleFavorite(fruit: fruit)
                    } label: {
                        Image(
                            systemName: viewModel.favorites.contains(fruit)
                                ? "heart.fill" : "heart"
                        )
                    }
                    .foregroundStyle(
                        viewModel.favorites.contains(fruit)
                            ? .red : .primary
                    )
                }

            }
            .navigationTitle("Fruits")
            .toolbar {
                Button {
                    viewModel.addNewFruit(fruit: "Watermelon")
                } label: {
                    Image(systemName: "plus")
                }
            }
            .toolbar {
                Button {
                    navPath.append("favorites")
                } label: {
                    Image(systemName: "heart")
                }
            }
            .navigationDestination(for: String.self) { _ in
                FavoriteScreen(viewModel: viewModel)
            }

        }
    }
}

//

struct FavoriteScreen: View {

    @ObservedObject var viewModel: ViewModel

    var body: some View {

        Text("Favorite Fruits!")
            .font(.largeTitle)
            .bold()
            .padding()

        List(viewModel.favorites, id: \.self) { fruit in
            Text(fruit)
            // .bold(viewModel.favorites.contains(fruit))
            // .onTapGesture {
            //   viewModel.toggleFavorite(fruit: fruit)
            // }
        }

    }

}

//

#Preview {
    Objects()
}

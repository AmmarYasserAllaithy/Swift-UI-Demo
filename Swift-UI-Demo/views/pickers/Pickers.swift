//
//  PickerViews.swift
//  Swift-UI-Demo
//
//  Created by Mac on 07/12/2025.
//

import SwiftUI

enum Fruits: String, CaseIterable {
    case Watermelon, Apple, Banana, Orange, Grape, Mango
}

struct Pickers: View {

    @State var selectedFruit: Fruits = .Watermelon

    var body: some View {

//        List {
            Picker("Your favorite fruit:", selection: $selectedFruit) {
                ForEach(Fruits.allCases, id: \.self) { fruit in
                    Text(fruit.rawValue)
                }
            }
            .pickerStyle(.automatic)
//        }
//        .padding(0)
//        .frame(height: 100)

    }
}

#Preview {
    Pickers()
}

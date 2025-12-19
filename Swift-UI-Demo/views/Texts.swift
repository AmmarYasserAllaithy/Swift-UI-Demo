//
//  TextViews.swift
//  Swift-UI-Demo
//
//  Created by Mac on 22/11/2025.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var name: String
}

let fruits: [Fruit] = [
    Fruit(name: "Mango"),
    Fruit(name: "Banana"),
    // Fruit(name: "Pineapple"),
    // Fruit(name: "Orange"),
]

struct Texts: View {
    var body: some View {

        ForEach(fruits) { fruit in
            VStack {
                Stacks(text: .constant(fruit.name))

                Text("\(fruit.id.uuidString.prefix(8))")
                    .contextMenu {
                        Text(fruit.id.uuidString)

                        Button("Copy to clipboard") {
                            print("Copied")
                        }

                        Button(role: .destructive) {
                            print("Deleted")
                        } label: {
                            HStack {
                                Text("Delete")
                                Image(systemName: "trash")
                            }
                        }
                    }
            }
        }

    }

}

//

#Preview {
    Texts()
}

//

struct AppTitle: View {

    @State var title: String = "SwiftUI Demo"

    var body: some View {

        Text(title)
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .cornerRadius(16)
            .shadow(radius: 10)
            .padding()

    }
}

#Preview {
    AppTitle()
}

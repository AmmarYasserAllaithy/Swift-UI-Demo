//
//  Navigation.swift
//  Swift-UI-Demo
//
//  Created by Mac on 25/11/2025.
//

import SwiftUI

struct Person: Hashable {
    let name: String
}

//

public struct Navigations: View {

    public var body: some View {

        NavigationStack {

            VStack(spacing: 24) {

                Text("Navigation")
                    .font(.largeTitle)
                    .bold()

                NavigationLink(value: 123) {
                    Text("Navigate to Int")
                }
                .navigationDestination(for: Int.self) { it in
                    Text("It's, \(it)")
                }

                NavigationLink(value: "dummy text") {
                    Text("Navigate to String")
                }
                .navigationDestination(for: String.self) { it in
                    Text("It's, \(it)")
                }

                NavigationLink(value: Person(name: "Ammar")) {
                    Text("Navigate to Person")
                }
                .navigationDestination(for: Person.self) { it in
                    Text("It's, \(it.name)")
                }
            }
        }
        .padding()

    }
}

//

struct NavigationWithStack: View {

    @State var stack: [String] = []

    var body: some View {

        NavigationStack(path: $stack) {

            VStack(spacing: 24) {

                Text("Navigation With Stack")
                    .font(.largeTitle)
                    .bold()

                Text("Screen: 1")

                Button {
                    stack.append(contentsOf: ["2", "3", "4"])
                } label: {
                    Text("Navigate")
                }

            }
            .navigationDestination(for: String.self) { n in
                Text("Screen: \(n)")
            }

        }

    }
}

//

struct NavigationWithFlag: View {

    @State var isPresented: Bool = false

    var body: some View {

        NavigationStack {

            VStack(spacing: 24) {

                Text("Navigation With Flag")
                    .font(.largeTitle)
                    .bold()

                Button {
                    isPresented.toggle()
                } label: {
                    Text("Navigate")
                }
                .navigationDestination(isPresented: $isPresented) {

                    Text("isPresented: true")

                    Button {
                        isPresented.toggle()
                    } label: {
                        Text("Go back")
                    }

                }

            }

        }

    }

}

//

struct NavigationToolbars: View {

    @State var paths: [String] = []
    @State var input: String = ""

    var body: some View {

        NavigationStack(path: $paths) {

            ScrollView {
                Inputs(textInput: $input)

                Grids()
                    .onTapGesture {
                        paths.append("grid")
                    }
            }
            .navigationTitle("Nav Toolbar")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "chevron.left")
                }

                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "plus")
                }

                ToolbarItem(placement: .keyboard) {
                    Image(systemName: "checkmark")
                }
            }
            .navigationDestination(for: String.self) { it in
                Text("Destination: \(it)\nThis is screen 2")
                    .multilineTextAlignment(.center)
            }
            .toolbarTitleMenu {
                // TODO: implement

                Button {
                    paths.append("2")
                } label: {
                    Text("Go to Destination 2")
                }

                Button {
                    paths.append("3")
                } label: {
                    Text("Go to Destination 3")
                }
            }

        }
    }
}

//

#Preview {
    Navigations()
}

#Preview {
    NavigationWithStack()
}

#Preview {
    NavigationWithFlag()
}

#Preview {
    NavigationToolbars()
}

//
//  SwiftEnvObjects.swift
//  Swift-UI-Demo
//
//  Created by Mac on 10/12/2025.
//

import Combine
import SwiftUI

//

class User: ObservableObject {
    @Published var name = "Ammar"
    @Published var age = 28
}

//

struct EnvObjects: View {

    @StateObject var user = User()

    var body: some View {

        NavigationStack {
            Text("Hello, \(user.name)")

            NavigationLink("Nav to screen 1", destination: FirstScreen())
        }
        .environmentObject(user)

    }
}

//

struct FirstScreen: View {
    var body: some View {
        VStack {
            NavigationLink("Nav to screen 2", destination: SecondScreen())
        }
    }
}

//

struct SecondScreen: View {

    @EnvironmentObject var ssUser: User

    /// DIDN'T work: it updates local state object NOT the env object
    /// @StateObject var ssUser = User()

    var body: some View {

        VStack {
            Button("Change Name to John") {
                ssUser.name = "John"
            }
            .bold()
            .foregroundStyle(.red)

            NavigationLink("Nav to last screen", destination: LastScreen())
        }
        .environmentObject(ssUser)
    }
}

//

struct LastScreen: View {

    // Variable name doesn't matter
    // Only the type do
    @EnvironmentObject var envUser: User

    var body: some View {
        VStack {
            Text("Env User Name: \(envUser.name)")
                .bold()

            Text("Last Screen")
        }
    }
}

//

#Preview {
    EnvObjects()
}

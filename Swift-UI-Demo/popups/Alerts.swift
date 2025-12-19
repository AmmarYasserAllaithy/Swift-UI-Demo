//
//  AlertViews.swift
//  Swift-UI-Demo
//
//  Created by Mac on 26/11/2025.
//

import SwiftUI

struct Alerts: View {

    @State var isPresented: Bool = false
    @State var input: String = ""

    var body: some View {

        Button("Show alert") {
            isPresented.toggle()
        }
        .alert("Alert title + message", isPresented: $isPresented) {

            TextField("Input somthing ...", text: $input)

            Button("Submit") {
                print("Submitted: \(input)")
                input = ""
            }

            Button("Clear", role: .destructive) {
                input = ""
                print("Cleared")
                // TODO: consume NOT to close
            }

        } message: {
            Text("lorem ipsum dollor")
        }

    }

}

#Preview {
    Alerts(isPresented: false)
}

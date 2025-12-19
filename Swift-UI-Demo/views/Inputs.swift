//
//  TextViews.swift
//  Swift-UI-Demo
//
//  Created by Mac on 21/11/2025.
//

import SwiftUI

struct Inputs: View {

    @Binding var textInput: String

    var body: some View {

        Group {

            TextField(
                "Type ur name",
                text: $textInput,
                onEditingChanged: { _ in
                    print($textInput)
                }
            )
            .textFieldStyle(.roundedBorder)
            .padding()

            if !textInput.isEmpty {
                Button {
                    print(textInput)
                } label: {
                    Text("Print my name")
                }
                .disabled(textInput.isEmpty)
                .padding()
                .background(.yellow)
                .foregroundStyle(Color(.black))
                .clipShape(Capsule())
            }

            TextEditor(text: $textInput)
                .scrollContentBackground(.hidden)
                .background(.gray.opacity(0.1))
                // .border(Color.black, width: 1)
                .cornerRadius(16)
                // .multilineTextAlignment(.center)
                .lineSpacing(10)
                .frame(height: 128)
                .padding()

        }

    }

}

#Preview {
    Inputs(textInput: .constant(""))
}

//
//  ToggleViews.swift
//  Swift-UI-Demo
//
//  Created by Mac on 27/11/2025.
//

import SwiftUI

struct Toggles: View {

    @State var isOn: Bool = false

    var body: some View {

        // VStack {

        // Text("Data privacy settings")

        Toggle("Use my data to train models", isOn: $isOn)
            .padding()
            .background(.blue.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .padding()
            .tint(.blue)
            // .labelsHidden()
            .onChange(of: isOn) { oldValue, newValue in
                print(oldValue, newValue)
            }

        // }
    }
}

#Preview {
    Toggles()
}

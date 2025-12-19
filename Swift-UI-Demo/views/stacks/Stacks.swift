//
//  StackView.swift
//  Swift-UI-Demo
//
//  Created by Mac on 21/11/2025.
//

import SwiftUI

struct Stacks: View {

    @Binding var text: String

    @State private var isActive: Bool = false

    // init(label: String) {
    //     self.text = label
    // }

    var body: some View {

        ZStack {  // spacing: 1 6

            Rectangle()
                .foregroundStyle(Color.clear)
                .background(
                    LinearGradient(
                        colors: [.blue, .cyan, .mint],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing,
                    )
                    .cornerRadius(24)
                )
                .frame(height: 100)

            Text(text)
                .font(.title)
                .foregroundStyle(Color.white)
                .bold()
                .italic()

        }
        .padding(12)
    }

}

// Preview

#Preview {
    Stacks(text: .constant("Hello, It's stack view"))
}

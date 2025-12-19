//
//  SliderViews.swift
//  Swift-UI-Demo
//
//  Created by Mac on 07/12/2025.
//

import SwiftUI

struct Steppers: View {

    @State var fontSize: CGFloat = 18

    var body: some View {

        VStack(alignment: .leading, spacing: 16) {

            Text("Stepper")
                .font(.system(size: fontSize))
                .bold()
                .foregroundStyle(.blue)

            // Stepper("In(De)crease font size", value: $fontSize)

            Stepper("Animate font size") {
                withAnimation {
                    fontSize += 3
                }
            } onDecrement: {
                withAnimation {
                    fontSize -= 3
                }
            }

        }
    }
}

#Preview {
    Steppers()
}

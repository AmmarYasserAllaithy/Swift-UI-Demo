//
//  ShapeView.swift
//  Swift-UI-Demo
//
//  Created by Mac on 21/11/2025.
//
import SwiftUI

struct Shapes: View {

    var body: some View {

        Rectangle()
            // .stroke(style: StrokeStyle(lineWidth: 10))
            .foregroundColor(.teal.opacity(0.25))
            .frame(height: 250)
            .overlay {
                Circle()
                    .trim(from: 0.05, to: 0.5)
                    .foregroundStyle(.indigo)
                    .padding()

                Circle()
                    .trim(from: 0.5, to: 0.95)
                    .foregroundStyle(.blue)
                    .padding()
            }
            .clipShape(RoundedRectangle(cornerRadius: 64))
            .padding()

    }

}

#Preview {
    Shapes()
}

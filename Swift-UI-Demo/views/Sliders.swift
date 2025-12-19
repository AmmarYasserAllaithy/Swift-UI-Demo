//
//  SliderViews.swift
//  Swift-UI-Demo
//
//  Created by Mac on 07/12/2025.
//

import SwiftUI

struct Sliders: View {

    @State var price: Double = 25

    var body: some View {

        VStack(alignment: .leading, spacing: 16) {

            Text("Selected price: \(Int(price))")
                .bold()
                .foregroundStyle(.blue)

            Slider(value: $price, in: 0...100) {
                Text("Select price range")
            } minimumValueLabel: {
                Text("$0")
            } maximumValueLabel: {
                Text("$100")
            }

        }
    }
}

#Preview {
    Sliders()
}

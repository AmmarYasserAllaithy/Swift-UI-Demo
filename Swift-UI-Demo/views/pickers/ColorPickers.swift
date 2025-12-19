//
//  ColorPickerViews.swift
//  Swift-UI-Demo
//
//  Created by Mac on 07/12/2025.
//

import SwiftUI

struct ColorPickers: View {

    @State var selectedColor: Color = .red

    var body: some View {

        // List {
        ColorPicker(
            "Select any color:",
            selection: $selectedColor,
            // supportsOpacity: false
        )
        // .foregroundStyle(selectedColor)
        //    }

    }
}

#Preview {
    ColorPickers()
}

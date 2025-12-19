//
//  ContentView.swift
//  Swift-UI-Demo
//
//  Created by Mac on 18/11/2025.
//

import SwiftUI

struct ContentView: View {

    @State private var stackText: String = ""

    var body: some View {

        // Color.red
        //    // includes top in the drawing canvas
        //    .ignoresSafeArea(edges: .all)

        ScrollView(showsIndicators: false) {

            AppTitle(title: "Swift UI Demo")

            Image(systemName: "house")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .padding()

            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
            )
            .bold()
            .foregroundStyle(Color(.black))
            .font(.system(size: 22))
            .lineLimit(0...3)
            .multilineTextAlignment(.center)
            .minimumScaleFactor(0.8)
            .kerning(1)  // letter-spacing
            .baselineOffset(8)  // line-spacing
            .padding()

            Images()

            Toggles()

            List {
                Pickers()

                DatePickers()

                ColorPickers()

                Sliders()

                Steppers()
            }
            .padding(0)
            .frame(minHeight: 440)

            HStack {
                Alerts().padding(24)

                SheetsAndPopups().padding(24)
            }

            Group {
                Animations()

                Shapes()

                Inputs(textInput: $stackText)

                Stacks(text: $stackText)
            }

            HStack {
                Texts()
            }

            Lists()
                .padding(0)
                // .background(.mint.opacity(0.2))
                .frame(height: 260)

        }

    }
}

//

#Preview {
    ContentView()
}

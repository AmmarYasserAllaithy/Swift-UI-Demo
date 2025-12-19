//
//  Popups.swift
//  Swift-UI-Demo
//
//  Created by Mac on 23/11/2025.
//

import SwiftUI

struct SheetsAndPopups: View {

    @State var isPopupPresented: Bool = false

    var body: some View {

        Button("Open Sheet") {
            isPopupPresented.toggle()
        }
        .padding()
        .background(.blue.opacity(0.8))
        .foregroundStyle(.white)
        .clipShape(Capsule())
        .bold()
        .sheet(isPresented: $isPopupPresented) {
            NavigationToolbars()
        }
        /// Tooltip in wide screens (mac)
        // .popover(isPresented: $isPopupPresented) {
        //    PopupView()
        //        .background(.mint.opacity(0.25))
        //        .clipShape(RoundedRectangle(cornerRadius: 16))
        // }

    }
}

struct PopupView: View {

    var body: some View {

        VStack {
            Text("Popup title")
                .font(.largeTitle)
                .foregroundStyle(.black)

            Text("Lorem ipsum dollor ...")
                .foregroundStyle(.black)
        }
        // .background(.blue.opacity(0.5))
        // .frame(height: .greatestFiniteMagnitude)
        .padding()

    }
}

//

#Preview {
    PopupView()
}

//
//  ImageView.swift
//  Swift-UI-Demo
//
//  Created by Mac on 21/11/2025.
//

import SwiftUI

struct Images: View {

    @State var isAnimated: Bool = false

    var body: some View {

        Image("nature")
            .resizable()
            // .renderingMode(.template)
            // .foregroundStyle(Color(.black))
            .scaledToFit()
            .frame(height: 200)
            .clipShape(Circle())
            .scaleEffect(isAnimated ? 1.2 : 1.0)
            .rotationEffect(.degrees(isAnimated ? 360 : 0))
            .animation(.easeInOut(duration: 1.0), value: isAnimated)
            .onTapGesture {
                isAnimated.toggle()
            }

    }

}

#Preview {
    Images()
}

//
//  Animations.swift
//  Swift-UI-Demo
//
//  Created by Mac on 22/11/2025.
//

import SwiftUI

struct Animations: View {

    @State var isAnimated: Bool = false

    var body: some View {

        ZStack {
            RoundedRectangle(cornerRadius: isAnimated ? 150 : 50)
                .frame(width: 200, height: 200)
                .foregroundStyle(isAnimated ? .mint : .blue)
                .scaleEffect(isAnimated ? 1.25 : 1.0)
                .rotationEffect(.degrees(isAnimated ? 180 : 0))
                .rotation3DEffect(
                    .degrees(isAnimated ? 360 : 0),
                    axis: (x: 1, y: 1, z: 1)
                )
                .opacity(isAnimated ? 0.5 : 1.0)
                // .animation(.easeInOut(duration: 1.5), value: isAnimated)  // only this ronded rect is animated
                .padding(20)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 1.5)) {  // All components rely on isAnimated are animated
                        isAnimated.toggle()
                    }
                }

            if isAnimated {
                Text("Ezyk\nya raye2\n??")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)

            }
        }

    }
}

#Preview {
    Animations(isAnimated: false)
}

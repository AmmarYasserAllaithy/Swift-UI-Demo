//
//  LazyStackViews.swift
//  Swift-UI-Demo
//
//  Created by Mac on 22/11/2025.
//

import SwiftUI

struct LazyStacks: View {

    var body: some View {

        ScrollView {
            LazyVStack {
                ForEach(0..<113) { idx in

                    Text("Hello, World!")
                        .onAppear {
                            print("\(idx) rendered")
                        }
                        .padding()
                        .background(.blue.opacity(0.1))

                }
            }
        }

    }
}

#Preview {
    LazyStacks()
}

//
//  GridViews.swift
//  Swift-UI-Demo
//
//  Created by Mac on 25/11/2025.
//

import SwiftUI

struct Grids: View {

    let data = (1...64).map { "item \($0)" }

    let columns: [GridItem] = [
        GridItem(.adaptive(minimum: 80))
    ]

    var body: some View {

        ScrollView {

            LazyVGrid(columns: columns, spacing: 24) {

                ForEach(data, id: \.self) { it in
                    let n: Int = Int(it.suffix(1)) ?? 1
                    let color = n % 3 == 0 ? Color.blue : .mint

                    RoundedRectangle(cornerRadius: 16)
                        .frame(width: 100, height: 100)
                        .foregroundStyle(color)

                    Text(it)

                }

            }
            .padding(.horizontal)

        }

    }
}

#Preview {
    Grids()
}

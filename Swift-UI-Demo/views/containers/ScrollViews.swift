//
//  ScrollViews.swift
//  Swift-UI-Demo
//
//  Created by Mac on 22/11/2025.
//

import SwiftUI

struct ScrollViews: View {

    var body: some View {

        ScrollView(.vertical, showsIndicators: false) {

            Texts()
            Texts()
            Texts()

        }
        .padding()

    }

}

#Preview {
    ScrollViews()
}

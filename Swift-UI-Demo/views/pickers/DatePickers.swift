//
//  PickerViews.swift
//  Swift-UI-Demo
//
//  Created by Mac on 07/12/2025.
//

import SwiftUI

struct DatePickers: View {

    @State var selectedDate: Date = Date.now

    var body: some View {

//        List {
            DatePicker(
                "Select a date:",
                selection: $selectedDate,
                // in: Date.now...,
                in: Date.now...threeMonthsFromNow,
                // displayedComponents: .date,
            )
            // .labelsHidden()
//        }

    }

    var threeMonthsFromNow: Date = Calendar.current.date(
        byAdding: .month,
        value: 3,
        to: .now
    )!

}

#Preview {
    DatePickers()
}

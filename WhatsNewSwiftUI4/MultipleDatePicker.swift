//
//  MultipleDatePicker.swift
//  WhatsNewSwiftUI4
//
//  Created by Ali Aghamirbabaei on 6/9/22.
//

import SwiftUI

// MARK: MultiDatePicker
struct MultipleDatePicker: View {
    @State var selectedDate: Set<DateComponents> = []
    var body: some View {
        MultiDatePicker("Pick some date", selection: $selectedDate)
            .frame(height: 400)
            .padding()
    }
}

struct MultipleDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        MultipleDatePicker()
    }
}

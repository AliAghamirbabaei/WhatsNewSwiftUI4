//
//  PresentationDetents.swift
//  WhatsNewSwiftUI4
//
//  Created by Ali Aghamirbabaei on 6/8/22.
//

import SwiftUI

// MARK: PresentationDetents
struct PresentationDetents: View {
    @State var showView: Bool = false
    var body: some View {
        Button("Show Sheet") {
            showView.toggle()
        }
        .sheet(isPresented: $showView) {
            Text("New View")
                .presentationDetents([.small, .medium, .large])
                .presentationDragIndicator(.visible)
        }
    }
}

extension PresentationDetent {
    static let small = Self.height(100)
}

struct PresentationDetents_Previews: PreviewProvider {
    static var previews: some View {
        PresentationDetents()
    }
}

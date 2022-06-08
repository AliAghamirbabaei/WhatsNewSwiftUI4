//
//  ShadowUpdates.swift
//  WhatsNewSwiftUI4
//
//  Created by Ali Aghamirbabaei on 6/9/22.
//

import SwiftUI

// MARK: Shadow updates
struct Shadow: View {
    var body: some View {
        Text("Hello, World!")
            .padding(20)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white.shadow(.drop(radius: 10)))
                    // .fill(.white.shadow(.inner(radius: 10)))
            )
    }
}

struct Shadow_Previews: PreviewProvider {
    static var previews: some View {
        Shadow()
    }
}

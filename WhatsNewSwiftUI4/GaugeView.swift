//
//  GaugeView.swift
//  WhatsNewSwiftUI4
//
//  Created by Ali Aghamirbabaei on 6/9/22.
//

import SwiftUI

// MARK: Gauge progress
struct GaugeView: View {
    let gradient = Gradient (colors: [.green, .yellow, .orange, .red])
    
    var body: some View {
        Gauge(value: 0.1, label: {
            Text("10%")
                .foregroundColor(.blue)
        }) {
            Text("10%")
                .foregroundColor(.red)
                .font(.callout)
        }
        .tint(gradient)
        .gaugeStyle(.accessoryCircular)
        .padding()
    }
}

struct GaugeView_Previews: PreviewProvider {
    static var previews: some View {
        GaugeView()
    }
}

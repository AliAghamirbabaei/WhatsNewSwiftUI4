//
//  CustomLayout.swift
//  WhatsNewSwiftUI4
//
//  Created by Ali Aghamirbabaei on 6/9/22.
//

import SwiftUI

// MARK: Custom Layout Stack
struct CustomLayout: View {
    var body: some View {
        CustomStack {
            ForEach(1...5, id: \.self) { index in
                Circle()
                    .fill(.red)
                    .frame(width: 50, height: 50)
                    .overlay(
                        Text("\(index)")
                    )
                    .padding()
            }
        }
    }
}

struct CustomStack: Layout {
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        
        // For move views to center
        let requireWidth = subviews.compactMap { view -> Double? in
            return view.sizeThatFits(.unspecified).width
        }.max()
        
        return .init(width: requireWidth ?? 100, height: proposal.height ?? 100)
    }
    
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        var origin = bounds.origin
        for subView in subviews {
            subView.place(at: origin, anchor: .topLeading, proposal: proposal)
            // For Placing Views At Vertical
            // Adding Each View Size To Origin
            // So That Next View Will place Below The Current View
            // For Horizontal
            // Just Change It To Width
            //origin.x += subView.sizeThatFits(.unspecified).width
            origin.y += subView.sizeThatFits(.unspecified).height
        }
    }
}

struct CustomLayout_Previews: PreviewProvider {
    static var previews: some View {
        CustomLayout()
    }
}

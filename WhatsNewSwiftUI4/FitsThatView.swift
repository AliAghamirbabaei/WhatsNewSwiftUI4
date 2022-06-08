//
//  FitsThatView.swift
//  WhatsNewSwiftUI4
//
//  Created by Ali Aghamirbabaei on 6/8/22.
//

import SwiftUI

// MARK: View That Fits
struct FitsThatView: View {
    var body: some View {
        VStack {
            CustomView()
                .frame(width: 100)
            
            CustomView()
                .frame(width: 50)
            
            CustomView()
                .frame(width: 150)
        }
    }
}

extension FitsThatView {
    @ViewBuilder
    func CustomView() -> some View {
        ViewThatFits(in: .horizontal) {
            // First View
            HStack{
                Rectangle()
                    .frame(width: 100, height: 10)
                
                Text("Bar")
            }
            
            // Second view
            Rectangle()
                .frame(width: 80, height: 10)
            // Third view
            Text("Bar")
        }
    }
}

struct FitsThatView_Previews: PreviewProvider {
    static var previews: some View {
        FitsThatView()
    }
}

//
//  TapGestureLocation.swift
//  WhatsNewSwiftUI4
//
//  Created by Ali Aghamirbabaei on 6/9/22.
//

import SwiftUI

// MARK: TapGestureLocation
struct TapGestureLocation: View {
    var body: some View {
        Rectangle()
        .fill(.red)
        .frame(height: 300)
        .padding ()
        .onTapGesture { location in
            print(location)
        }
        // With Coordinate Space
//        .onTapGesture(coordinateSpace: .global) { location in
//            print(location)
//        }
    }
}

struct TapGestureLocation_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureLocation()
    }
}

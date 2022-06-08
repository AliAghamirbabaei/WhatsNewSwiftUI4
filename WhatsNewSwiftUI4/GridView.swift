//
//  GridView.swift
//  WhatsNewSwiftUI4
//
//  Created by Ali Aghamirbabaei on 6/9/22.
//

import SwiftUI

// MARK: Grid
struct GridView: View {
    var body: some View {
        Grid {
            GridRow {
                Color.red
                Color.red
                Color.red
            }
            
            GridRow {
                Color.red
                    .gridCellAnchor(.center)
                    .gridCellColumns(3)
            }
        }
        .frame(height: 200)
        
        Grid {
            GridRow {
                Color.blue
                    .frame(width: 30, height: 30)
                
                Color.blue
                    .frame(width: 30, height: 30)
                
                Color.blue
                    .frame(width: 30, height: 30)
            }
            
            Divider()
                .background(.red)
                .gridCellUnsizedAxes(.horizontal)
            
            GridRow {
                Color.blue
                    .frame(width: 30, height: 30)
                
                Color.blue
                    .frame(width: 30, height: 30)
                
                Color.blue
                    .frame(width: 30, height: 30)
            }
        }
        .frame(height: 200)
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}

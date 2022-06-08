//
//  NavigationSplit.swift
//  WhatsNewSwiftUI4
//
//  Created by Ali Aghamirbabaei on 6/9/22.
//

import SwiftUI

// MARK: Navigation Split View for iPadOS
struct NavigationSplit: View {
    @State var visibility: NavigationSplitViewVisibility = .automatic
    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            Text("Side Bar")
                // .navigationSplitViewColumnWidth(100)
        } content: {
            Text("Main Content")
        } detail: {
            VStack {
                Text("Detail Content")
                
                Button("Show All Views") {
                    visibility = .all
                }
            }
        }
        // .navigationSplitViewStyle(.prominentDetail)
    }
}

struct NavigationSplit_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSplit()
    }
}

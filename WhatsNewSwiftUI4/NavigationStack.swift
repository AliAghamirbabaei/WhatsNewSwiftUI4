//
//  NavigationStack.swift
//  WhatsNewSwiftUI4
//
//  Created by Ali Aghamirbabaei on 6/9/22.
//

import SwiftUI

// MARK: Navigation Stack View for routing between views
struct NavigationStackView: View {
    @State var stack = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $stack) {
            NavigationLink("Go to new view", value: 13)
                .navigationDestination(for: Int.self) { value in
                    VStack {
                        NavigationLink("Go to new view", value: 15)
                        Text("New View Detail: \(value)")
                        
                        Button("Pop to Root") {
                            // Back one page
                            // stack.removeLast()
                            
                            // Back to root
                            stack = .init()
                        }
                    }
                }
        }
    }
}

struct NavigationStackView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackView()
    }
}

//
//  ScrollViewUpdates.swift
//  WhatsNewSwiftUI4
//
//  Created by Ali Aghamirbabaei on 6/9/22.
//

import SwiftUI

// MARK: ScrollViewUpdates
struct ScrollViewUpdates: View {
    @State var disableScrollView: Bool = false
    @State var textValue: String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something...", text: $textValue)
                    .textFieldStyle(.roundedBorder)
                
                ForEach(1...20,id: \.self){_ in
                    Rectangle()
                        .fill(.red)
                        .frame(height: 200)
                }
            }
            .padding()
        }
        // Hide keyboard on scroll
        .scrollDismissesKeyboard(.immediately)
        .disabled(disableScrollView)
        .onTapGesture {
            disableScrollView.toggle()
        }
    }
}

struct ScrollViewUpdates_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewUpdates()
    }
}

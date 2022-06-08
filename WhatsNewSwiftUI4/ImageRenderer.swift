//
//  ImageRenderer.swift
//  WhatsNewSwiftUI4
//
//  Created by Ali Aghamirbabaei on 6/8/22.
//

import SwiftUI

// MARK: Image Renderer
struct ImageRendererView: View {
    @State var generatedImage: UIImage?
    
    var body: some View {
        VStack {
            Button("Render View As Image") {
                let renderer = ImageRenderer(content: SampleView())
                if let image = renderer.uiImage {
                    withAnimation {
                        generatedImage = image
                    }
                }
            }
            
            if let generatedImage {
                Image(uiImage: generatedImage)
            }
        }
    }
}

extension ImageRendererView {
    @ViewBuilder
    func SampleView() -> some View {
        VStack {
            Image("Swift")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            Text("This is a text but as image!")
                .fontWeight(.black)
                .foregroundColor(.purple)
        }
    }
}

struct ImageRendererView_Previews: PreviewProvider {
    static var previews: some View {
        ImageRendererView()
    }
}

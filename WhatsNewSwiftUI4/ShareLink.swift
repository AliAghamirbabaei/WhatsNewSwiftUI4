//
//  ShareLink.swift
//  WhatsNewSwiftUI4
//
//  Created by Ali Aghamirbabaei on 6/8/22.
//

import SwiftUI

// MARK: Share Link (UIKit Share Sheet)
struct ShareLinkView: View {
    var image = ImageFile(image: Image("Swift"))
    
    var body: some View {
        ShareLink(item: image, preview: SharePreview("Swift", image: image.image)) {
            Text("Hello World")
        }
    }
}

struct ImageFile: Transferable {
    var image: Image
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation(exporting: \.image)
    }
}


struct ShareLinkView_Previews: PreviewProvider {
    static var previews: some View {
        ShareLinkView()
    }
}

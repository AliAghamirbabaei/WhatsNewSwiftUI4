//
//  iPadOSTable.swift
//  WhatsNewSwiftUI4
//
//  Created by Ali Aghamirbabaei on 6/9/22.
//

import SwiftUI

// MARK: Table for iPadOS
struct iPadOSTable: View {
    var body: some View {
        // MARK: We have two ways to declare table for iPad
        // one:
        Table(sampleData) {
            TableColumn("Day", value: \.day)
            TableColumn("Downloads", value: \.downloads)
        }
        
        // two:
//        Table{
//            TableColumn("Day", value: \.day)
//            TableColumn("Downloads", value: \.downloads)
//        } rows: {
//            ForEach(sampleData) {
//                TableRow($0)
//            }
//        }
    }
}

// MARK: Sample Model And Data
fileprivate struct DataModel: Identifiable {
    var id = UUID().uuidString
    var day: String
    var downloads: String
}

fileprivate var sampleData: [DataModel] = [
    DataModel(day: "Sat", downloads: "90"),
    DataModel(day: "Sun", downloads: "900"),
    DataModel(day: "Mon", downloads: "100"),
    DataModel(day: "Tue", downloads: "200"),
    DataModel(day: "Wed", downloads: "350"),
    DataModel(day: "Thu", downloads: "420"),
    DataModel(day: "Fri", downloads: "580")
]

struct iPadOSTable_Previews: PreviewProvider {
    static var previews: some View {
        iPadOSTable()
    }
}

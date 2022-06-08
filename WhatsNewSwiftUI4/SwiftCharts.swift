//
//  SwiftCharts.swift
//  WhatsNewSwiftUI4
//
//  Created by Ali Aghamirbabaei on 6/8/22.
//

import SwiftUI
import Charts

// MARK: Swift Charts
struct SwiftCharts: View {
    let barColors: [Color] = [.red, .black, .blue, .green, .yellow, .pink, .teal]
    
    var body: some View {
        Chart(sampleData) { item in
            BarMark(
                x: .value("Day", item.day),
                y: .value("Downloads", item.downloads)
            )
            .foregroundStyle(by: .value("Day", item.day))
            .annotation(position: .top) {
                Image(systemName: "square.and.arrow.down.on.square.fill")
            }
            
            RuleMark(
                y: .value("Mid", 300)
            )
        }
        .chartForegroundStyleScale(
            domain: sampleData.compactMap({ download -> String? in
                download.day
            }),
            range: barColors
        )
        .frame(height: 300)
    }
}

// MARK: Sample Model And Data
fileprivate struct DataModel: Identifiable {
    var id = UUID().uuidString
    var day: String
    var downloads: Double
}

fileprivate var sampleData: [DataModel] = [
    DataModel(day: "Sat", downloads: 90),
    DataModel(day: "Sun", downloads: 900),
    DataModel(day: "Mon", downloads: 100),
    DataModel(day: "Tue", downloads: 200),
    DataModel(day: "Wed", downloads: 350),
    DataModel(day: "Thu", downloads: 420),
    DataModel(day: "Fri", downloads: 580)
]

struct SwiftCharts_Previews: PreviewProvider {
    static var previews: some View {
        SwiftCharts()
    }
}

//
//  ContentView.swift
//  creatingBarCharts
//
//  Created by Yukun Xie on 2024/11/4.
//

import SwiftUI
import Charts

let chartData = [ (grade: "Grade 9", data: ninethGrade),
                  (grade: "Grade 10", data: tenthGrade),
                  (grade: "Grade 11", data: eleventhGrade) ]

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Yukun's Past Grades")
            Chart {
                ForEach(chartData, id: \.grade) { series in
                    ForEach(series.data) { item in
                        LineMark(
                            x: .value("Month", item.date),
                            y: .value("Temp", item.grades)
                        )
                        .interpolationMethod(.stepStart)
                    }
                    .foregroundStyle(by: .value("Grade", series.grade))
                    .symbol(by: .value("Grades", series.grade))
                }
            }
            .chartYScale(domain: 85...100)
            .chartYAxis {
                AxisMarks(position: .leading)
            }
            .chartPlotStyle { plotArea in
                plotArea
                    .background(.blue.opacity(0.1))
            }
            .frame(height: 300)
            .padding()
            
        }
    }
}



#Preview {
    ContentView()
}

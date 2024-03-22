//
//  DynamicIslandWidgetProgressView.swift
//  DynamicIslandWithExamples
//
//  Created by Emre Karaoğlu on 20.03.2024.
//

import SwiftUI
import ActivityKit
import WidgetKit

@available(iOSApplicationExtension 16.1, *)
struct DynamicIslandWidgetProgressView: View {
    
    let contex: ActivityViewContext<SmsAndOTPAttribute>
    let timeDifference: TimeInterval?
    let calculatedDate: Date?
    
    init(contex: ActivityViewContext<SmsAndOTPAttribute>) {
        self.contex = contex
        self.timeDifference = contex.state.endDate?.timeIntervalSince(Date())
        self.calculatedDate = Date(timeIntervalSinceNow: timeDifference ?? TimeInterval())
    }
    
    var body: some View {
        ProgressView(timerInterval: Date()...(calculatedDate ?? Date()), countsDown: true, label: {
            EmptyView()
        }, currentValueLabel: {
            EmptyView()
        })
        .progressViewStyle(.circular)
        .tint(.purple)
    }
}

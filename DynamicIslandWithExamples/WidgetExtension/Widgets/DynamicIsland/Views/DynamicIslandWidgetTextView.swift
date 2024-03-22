//
//  DynamicIslandWidgetTextView.swift
//  DynamicIslandWithExamples
//
//  Created by Emre Karaoğlu on 20.03.2024.
//

import SwiftUI
import ActivityKit
import WidgetKit

@available(iOSApplicationExtension 16.1, *)
struct DynamicIslandWidgetTextView: View {
    
    let contex: ActivityViewContext<SmsAndOTPAttribute>
    let timeDifference: TimeInterval?
    let calculatedDate: Date?
    
    init(contex: ActivityViewContext<SmsAndOTPAttribute>) {
        self.contex = contex
        self.timeDifference = contex.state.endDate?.timeIntervalSince(Date())
        self.calculatedDate = Date().addingTimeInterval(timeDifference ?? 0)
    }
    
    var body: some View {
        Text(timerInterval: Date.now...(calculatedDate ?? Date()), pauseTime: Date(), countsDown: true, showsHours: false)
    }
}

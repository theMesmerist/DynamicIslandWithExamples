//
//  DynamicIslandWidget.swift
//  DynamicIslandWithExamples
//
//  Created by Emre Karaoğlu on 20.03.2024.
//

import SwiftUI
import WidgetKit

@available(iOSApplicationExtension 16.1, *)
struct DynamicIslandWidget: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: SmsAndOTPAttribute.self) { context in
            LiveActivityView(contex: context)
        } dynamicIsland: { context in
            DynamicIsland {
                DynamicIslandExpandedRegion(.leading) {
                    DynamicIslandWidgetLogo()
                        .frame(width: 50, height: 50)
                }
                DynamicIslandExpandedRegion(.trailing) {
                    DynamicIslandWidgetProgressWithTextView(contex: context)
                        .frame(width: 50, height: 50)
                }
                DynamicIslandExpandedRegion(.center) {
                    Text("Remaining Time")
                        .fontWeight(.medium)
                }
            } compactLeading: {
                DynamicIslandWidgetProgressView(contex: context)
                    .frame(width: 25, height: 25)
            } compactTrailing: {
                DynamicIslandWidgetTextView(contex: context)
                    .frame(width: 38, height: 30)
            } minimal: {
                Image(systemName: "timer")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundStyle(.black)
            }
        }
    }
}


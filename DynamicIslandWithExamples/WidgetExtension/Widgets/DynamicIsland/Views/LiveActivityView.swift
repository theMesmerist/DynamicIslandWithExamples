//
//  LiveActivityView.swift
//  DynamicIslandWithExamples
//
//  Created by Emre Karaoğlu on 20.03.2024.
//

import SwiftUI
import ActivityKit
import WidgetKit

@available(iOSApplicationExtension 16.1, *)
struct LiveActivityView: View {
    let contex: ActivityViewContext<SmsAndOTPAttribute>
    
    init(contex: ActivityViewContext<SmsAndOTPAttribute>) {
        self.contex = contex
    }
    
    var body: some View {
        HStack(alignment: .center) {
            DynamicIslandWidgetLogo()
                .frame(width: 50, height: 50, alignment: .leading)
            Spacer()
            Label {
                Text("Remaining Time")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
            } icon: {
                Image(systemName: "timer")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundColor(.white)
            }
            Spacer()
            DynamicIslandWidgetProgressWithTextView(contex: contex)
                .frame(width: .infinity, height: 50, alignment: .trailing)
        }
        .padding([.leading, .trailing], 8)
    }
}

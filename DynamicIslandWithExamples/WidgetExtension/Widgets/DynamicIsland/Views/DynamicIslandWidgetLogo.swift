//
//  DynamicIslandWidgetKnetLogo.swift
//  DynamicIslandWithExamples
//
//  Created by Emre Karaoğlu on 20.03.2024.
//

import SwiftUI

@available(iOSApplicationExtension 16.1, *)
struct DynamicIslandWidgetLogo: View {
    var body: some View {
        ZStack {
            Circle()
                .fill()
                .foregroundColor(.white)
                .overlay(
                    Circle()
                        .stroke(Color.purple, lineWidth: 1)
                )
            Image(systemName: "timer.circle.fill")
                .resizable()
                .foregroundStyle(.black)
        }
    }
}

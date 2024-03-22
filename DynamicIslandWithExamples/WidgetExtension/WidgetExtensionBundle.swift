//
//  WidgetExtensionBundle.swift
//  WidgetExtension
//
//  Created by Emre Karaoğlu on 20.03.2024.
//

import WidgetKit
import SwiftUI

@main
struct WidgetExtensionBundle: WidgetBundle {
    var body: some Widget {
        if #available(iOSApplicationExtension 16.1, *) {
            DynamicIslandWidget()
        }
    }
}

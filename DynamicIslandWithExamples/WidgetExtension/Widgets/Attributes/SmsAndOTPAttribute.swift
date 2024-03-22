//
//  SmsAndOTPAttribute.swift
//  DynamicIslandWithExamples
//
//  Created by Emre Karaoğlu on 19.03.2024.
//

import Foundation
import ActivityKit

struct SmsAndOTPAttribute: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        var endDate: Date?
    }
}

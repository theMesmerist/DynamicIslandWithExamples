//
//  DynamicIslandManager.swift
//  DynamicIslandWithExamples
//
//  Created by Emre Karaoğlu on 19.03.2024.
//

import Foundation
import ActivityKit

@available(iOS 16.1, *)
final class DynamicIslandManager {
    
    private init() {}
    static var shared: DynamicIslandManager = DynamicIslandManager()
    private var endDate: Date?
    private var contentState: SmsAndOTPAttribute.ContentState? {
        guard let endDate = endDate else {
            return nil
        }
        return SmsAndOTPAttribute.ContentState( endDate: endDate)
    }
    private var activity: Activity<SmsAndOTPAttribute>?
    
    func showDynamic(endDate: Date) {
        self.endDate = endDate
        do {
            activity = try Activity<SmsAndOTPAttribute>.request(attributes: SmsAndOTPAttribute(), contentState: contentState ?? SmsAndOTPAttribute.ContentState(), pushType: nil)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func endDynamic() {
        Task {
            await activity?.end(dismissalPolicy: .immediate)
        }
    }
}

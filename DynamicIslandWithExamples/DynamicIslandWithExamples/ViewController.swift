//
//  ViewController.swift
//  DynamicIslandWithExamples
//
//  Created by Emre Karaoğlu on 19.03.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    private var expireDate: Date = Date()
    private var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        didLoad()
    }
    
    private func didLoad() {
        setTimer()
        showDynamicIsland()
    }
    
    private func setExpireDate() {
        expireDate = Date().addingTimeInterval(5 * 60)
    }
    
    private func setTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        setExpireDate()
    }
    
    @objc private func updateTimer() {
        let currentDate = Date()
        if currentDate >= expireDate {
            timer?.invalidate()
            timer = nil
            print("Timer expired!")
            hideDynamicIsland()
        } else {
            let timeRemaining = expireDate.timeIntervalSince(currentDate)
            let minutes = Int(timeRemaining) / 60
            let seconds = Int(timeRemaining) % 60
            print("Time remaining: \(minutes) minutes \(seconds) seconds")
        }
    }
}

// MARK: - Dynamic Island Methods
extension ViewController {
    @available(iOS 16.1, *)
    private func showDynamicIsland() {
        DynamicIslandManager.shared.showDynamic(endDate: expireDate)
    }
    
    @available(iOS 16.1, *)
    private func hideDynamicIsland() {
        DynamicIslandManager.shared.endDynamic()
    }
}

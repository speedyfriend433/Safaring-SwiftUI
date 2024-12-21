//
//  StatisticsManager.swift
//  Safaring
//
//  Created by speedy on 2024/12/21.
//

import Foundation

class StatisticsManager {
    static let shared = StatisticsManager()
    
    @Published private(set) var blockedCount: Int = 0
    
    func incrementBlockCount() {
        blockedCount += 1
        UserDefaults.standard.set(blockedCount, forKey: "BlockedCount")
    }
    
    func resetStats() {
        blockedCount = 0
        UserDefaults.standard.set(0, forKey: "BlockedCount")
    }
}

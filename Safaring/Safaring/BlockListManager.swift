//
//  BlockListManager.swift
//  Safaring
//
//  Created by speedy on 2024/12/21.
//

import Foundation

class BlockListManager {
    static let shared = BlockListManager()
    
    private var blockList: [String: Bool] = [:]
    
    func addDomain(_ domain: String) {
        blockList[domain] = true
        saveBlockList()
    }
    
    func removeDomain(_ domain: String) {
        blockList.removeValue(forKey: domain)
        saveBlockList()
    }
    
    private func saveBlockList() {

        if let encoded = try? JSONEncoder().encode(blockList) {
            UserDefaults.standard.set(encoded, forKey: "BlockList")
        }
    }
}

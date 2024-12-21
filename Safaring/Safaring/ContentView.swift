//
//  ContentView.swift
//  Safaring
//
//  Created by speedy on 2024/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isEnabled = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Ad Blocker")
                .font(.largeTitle)
            
            Toggle("Enable Ad Blocking", isOn: $isEnabled)
                .padding()
            
            Text("Blocked Ads: \(numberOfBlockedAds)")
                .foregroundColor(.secondary)
        }
        .padding()
    }
}

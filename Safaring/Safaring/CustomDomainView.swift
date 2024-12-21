//
//  CustomDomainView.swift
//  Safaring
//
//  Created by speedy on 2024/12/21.
//

import SwiftUI

struct CustomDomainView: View {
    @State private var newDomain: String = ""
    @State private var customDomains: [String] = []
    
    var body: some View {
        List {
            Section(header: Text("Add Custom Domain")) {
                HStack {
                    TextField("Enter domain", text: $newDomain)
                    Button("Add") {
                        if !newDomain.isEmpty {
                            customDomains.append(newDomain)
                            newDomain = ""
                        }
                    }
                }
            }
            
            Section(header: Text("Custom Blocked Domains")) {
                ForEach(customDomains, id: \.self) { domain in
                    Text(domain)
                }
                .onDelete(perform: deleteDomain)
            }
        }
    }
    
    private func deleteDomain(at offsets: IndexSet) {
        customDomains.remove(atOffsets: offsets)
    }
}

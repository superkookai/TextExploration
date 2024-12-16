//
//  TextDateDemo.swift
//  TextExploration
//
//  Created by Weerawut Chaiyasomboon on 16/12/2567 BE.
//

import SwiftUI

struct TextDateDemo: View {
    let eventDate = Date(timeIntervalSinceNow: 15)
    let event = Date()
    let dateInterval = DateInterval(start: Date(), end: Date(timeIntervalSinceNow: 30))
    
    var body: some View {
        Form{
            Section("Interval"){
                Text(Date.now...Date.now.addingTimeInterval(60))
                Text(dateInterval)
            }
            
            Section("Relative,Offset,Timer"){
                Text("Event date start in \(eventDate, style: .relative)")
                Text("Event date start in \(eventDate, style: .offset)")
                Text("Event date start in \(eventDate, style: .timer)")
            }
            
            Section("Format"){
                Text(Date(),format: .dateTime)
                Text(Date(),format: .dateTime.hour())
                Text(Date(),format: .dateTime.hour().minute())
                Text(Date(),format: .dateTime.hour().minute().second())
            }
        }
    }
}

#Preview {
    TextDateDemo()
}

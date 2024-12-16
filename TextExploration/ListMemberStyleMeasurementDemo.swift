//
//  ListMemberStyleMeasurementDemo.swift
//  TextExploration
//
//  Created by Weerawut Chaiyasomboon on 16/12/2567 BE.
//

import SwiftUI

struct ListMemberStyleMeasurementDemo: View {
    let sesameStreetNames = [
        "Elmo",
        "Big Bird",
        "Cookie Monster",
        "Oscar the Grouch",
        "Abby Cadabby"
    ]
    
    let even = [0,2,4,6,8,10]
    
    let length = Measurement(value: 225, unit: UnitLength.centimeters)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text(sesameStreetNames, format: .list(type: .and))
            Text(sesameStreetNames, format: .list(type: .or))
            
            Text(even, format: .list(memberStyle: .number, type: .and))
            Text(even, format: .list(memberStyle: .percent, type: .and))
            
            Text(length, format: .measurement(width: .abbreviated))
            Text(length, format: .measurement(width: .narrow))
            Text(length, format: .measurement(width: .wide))
        }
        .font(.title)
        .padding()
    }
}

#Preview {
    ListMemberStyleMeasurementDemo()
}

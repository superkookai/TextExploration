//
//  PluralizationDemo.swift
//  TextExploration
//
//  Created by Weerawut Chaiyasomboon on 16/12/2567 BE.
//

import SwiftUI

struct PluralizationDemo: View {
    @State private var count = 1
    let nounList = [ "bread", "salt", "domino", "radius", "child", "foot", "tooth", "man", "woman", "goose", "focus", "matrix", "deer", "oasis", "fish", "index", "boom", "brush"]
    
    var body: some View {
        NavigationStack{
            VStack{
                Form{
                    ForEach(nounList, id: \.self) { noun in
                        LabeledContent(noun.capitalized) {
                            Text("^[\(count) \(noun.capitalized)](inflect: true)")
                        }
                    }
                }
                
                Button("Increment", systemImage: "plus.circle.fill") {
                    count += 1
                }
            }
            .font(.title)
            .navigationTitle("Pluralization")
            .toolbar {
                ToolbarItem {
                    Button("Reset"){
                        count = 1
                    }
                }
            }
        }
    }
}

#Preview {
    PluralizationDemo()
}

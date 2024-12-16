//
//  DisplayCodeWIthMarkdown.swift
//  TextExploration
//
//  Created by Weerawut Chaiyasomboon on 16/12/2567 BE.
//

import SwiftUI

struct DisplayCodeWIthMarkdown: View {
    let codeString = """
**A Swift View**

`import SwiftUI`

`struct DisplayCodeWIthMarkdown: View {`
    `var body: some View {`
        `Text("Hello, World!")`
    `}`
`}`

`#Preview {`
    `DisplayCodeWIthMarkdown()`
`}`
"""
    var body: some View {
        Text(LocalizedStringKey(codeString))
            .padding()
    }
}

#Preview {
    DisplayCodeWIthMarkdown()
}

//
//  MainView.swift
//  TextExploration
//
//  Created by Weerawut Chaiyasomboon on 16/12/2567 BE.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Acrostic Poems") {
                    AcrosticPoemView()
                }
                NavigationLink("Markdown") {
                    MarkDownDemo()
                }
                NavigationLink("Markdown and String Interpolation") {
                    MarkdownAndStringInterpolation()
                }
                NavigationLink("Markdown and Code") {
                    DisplayCodeWIthMarkdown()
                }
                NavigationLink("OpenURLAction") {
                    OpenURLActionDemo()
                }
                NavigationLink("Pluralization and Inflection") {
                    PluralizationDemo()
                }
                NavigationLink("List, Memberstyle and Measurements") {
                    ListMemberStyleMeasurementDemo()
                }
                NavigationLink("Dates and the Text View") {
                    TextDateDemo()
                }
                NavigationLink("Attributed String") {
                    AttributedStringDemo()
                }
            }.navigationTitle("Style and Text View")
        }
    }
}

#Preview {
    MainView()
}

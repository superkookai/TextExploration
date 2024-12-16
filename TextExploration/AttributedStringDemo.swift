//
//  AttributedStringDemo.swift
//  TextExploration
//
//  Created by Weerawut Chaiyasomboon on 16/12/2567 BE.
//

import SwiftUI

struct AttributedStringDemo: View {
    let rainbow = LinearGradient(
        colors: [
            .red,
            .orange,
            .yellow,
            .green,
            .blue,
            .purple,
            .pink
        ],
        startPoint: .leading,
        endPoint: .trailing
    )
    
    var attr1Demo: AttributedString{
        var myString = AttributedString("Attributed String")
        myString.foregroundColor = .orange
        myString.backgroundColor = .black.opacity(0.7)
        myString.font = Font.largeTitle
//        myString.baselineOffset = 20
        myString.kern = 5
        
        return myString
    }
    
    var attr2Demo: AttributedString{
        let coding = "Coding is Awesome!Let's code together!"
        
        var myString = AttributedString()
        myString.font = Font.largeTitle
        
        for (i,ch) in coding.enumerated(){
            var letterString = AttributedString(String(ch))
            let red = 0.3
            let green = 0.3
            let blue = Double(6*i % coding.count) / Double(coding.count)
            letterString.foregroundColor = Color(red: red, green: green, blue: blue)
            letterString.baselineOffset = Double(i)
            
            myString.append(letterString)
        }
        
        return myString
    }
    
    var attr3Demo: AttributedString{
        let coding = "Coding is Awesome!Let's code together!"
        
        var myString = AttributedString()
        myString.font = Font.largeTitle
        
        for (i,ch) in coding.enumerated(){
            var letterString = AttributedString(String(ch))
            let count = CGFloat(coding.count)
            let j = CGFloat(coding.count / 2 - i)
            letterString.baselineOffset = smileFactor*j*j / count
            
            myString += letterString
        }
        
        return myString
    }
    
    @State private var smileFactor = 5.0
    @State private var flip = 0.0
    
    var attr4Demo: AttributedString{
        let coding = "Coding is Awesome! Let's code together!"
        
        var myString = AttributedString()
        myString.font = Font.largeTitle
        
        let listOfWords = coding.split(separator: " ")
        for (i,word) in listOfWords.enumerated(){
            var wordString = AttributedString("\(word) ")
            wordString.baselineOffset = 10*CGFloat(i%2)
            
            myString += wordString
        }
        
        return myString
    }
    
    func stepRainbowText(_ text: String = "Coding is Awesome! Let's code together!", stepSize: CGFloat) -> AttributedString {
        var myString = AttributedString()
        myString.font = Font.largeTitle
        
        let listOfWords = text.split(separator: " ")
        for (i,word) in listOfWords.enumerated(){
            var wordString = AttributedString("\(word) ")
            wordString.baselineOffset = stepSize*CGFloat(i%2)
            
            myString += wordString
        }
        
        return myString
    }
    
    @State private var stepSize = 0.0
    
    var attr5Demo: AttributedString {
        var myString = AttributedString("Underline Demo")
        myString.font = Font.largeTitle
        myString.underlineStyle = Text.LineStyle(pattern: .dot, color: .red)
        return myString
        
    }
    var body: some View {
        ScrollView{
            Text(attr1Demo)
            
            Text(attr2Demo)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(
                    Color.gray.opacity(0.3)
                        .clipShape(.rect(cornerRadius: 10))
                )
            
            Text(attr3Demo)
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundStyle(rainbow)
                .rotation3DEffect(.degrees(flip*180), axis: (x: 1, y: 0, z: 0))
                .background(Color.black.clipShape(.rect(cornerRadius: 10)))
            
            HStack{
                Button("😁"){
                    withAnimation {
                        smileFactor = abs(smileFactor)
                    }
                }
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                
                Button("😍"){
                    withAnimation {
                        flip = 1 - flip
                    }
                }
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                
                Button("😔"){
                    withAnimation {
                        smileFactor = -abs(smileFactor)
                    }
                }
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
            }
            
            Text(attr4Demo)
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundStyle(rainbow)
                .background(Color.black.clipShape(.rect(cornerRadius: 10)))
            
            Text(stepRainbowText("no act of kindness, no matter how small, is ever wasted.".capitalized, stepSize: stepSize))
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundStyle(rainbow)
                .background(Color.black.clipShape(.rect(cornerRadius: 10)))
            
            Slider(value: $stepSize, in: -30...30)
            
            Text(attr5Demo)
            
        }
        .padding()
    }
}

#Preview {
    AttributedStringDemo()
}

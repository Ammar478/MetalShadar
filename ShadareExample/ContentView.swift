//
//  ContentView.swift
//  ShadareExample
//
//  Created by Ammar Alsanani on 26/06/2024.
//

import SwiftUI

struct ContentView: View {
    let startDate = Date.now
    @State var speed:Double = 5
    @State var strength:Double = 10
    @State var smoothing:Double = 5
    
    var body: some View {
        TimelineView(.animation) { timeline in
            let elapsedTime = timeline.date.distance(to: startDate)
            
            Image(systemName: "globe")
                .font(.system(size: 300))
                .foregroundStyle(.red.gradient)
                .waveEffect(elapsedTime: elapsedTime,speed: self.speed,strength: self.strength , smoothing: self.smoothing)
            
            VStack{
                LabeledContent("speed"){
                    Slider(value: $speed, in: 0...20)
                }
                
                LabeledContent("Strength"){
                    Slider(value: $strength, in: 0...20)
                }
                
                LabeledContent("Smoothing"){
                    Slider(value: $smoothing, in: 0...20)
                }
            }
            .padding(.horizontal)
            
        }
    }
}

#Preview {
    ContentView()
}

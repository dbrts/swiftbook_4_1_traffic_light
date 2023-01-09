//
//  ContentView.swift
//  swiftbook_4_1_traffic_light
//
//  Created by dobrets on 10.01.2023.
//

import SwiftUI

struct TrafficLightView: View {
    @State private var buttonText = "START"
    @State private var redLight = 0.5
    @State private var yellowLight = 0.5
    @State private var greenLight = 0.5
    
    var body: some View {
        VStack {
            ColorCircleView(color: .red, opacity: redLight)
                .padding(.bottom, 16)
            ColorCircleView(color: .yellow, opacity: yellowLight)
                .padding(.bottom, 16)
            ColorCircleView(color: .green, opacity: greenLight)
            Spacer()
            Button(action: buttonDidTapped) {
                Text(buttonText)
                    .font(.title)
            }
        }
        .padding()
    }
    
    private func buttonDidTapped() {
        if buttonText == "START" {
            buttonText = "NEXT"
            redLight = 1
        } else if redLight == 1 {
            redLight = 0.5
            yellowLight = 1
        } else if yellowLight == 1 {
            yellowLight = 0.5
            greenLight = 1
        } else if greenLight == 1 {
            greenLight = 0.5
            redLight = 1
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView()
    }
}

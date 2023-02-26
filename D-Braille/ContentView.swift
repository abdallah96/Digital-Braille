//
//  ContentView.swift
//  D-Braille
//
//  Created by Abdallah Amadou Gueye on 25.02.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0, green: 0.102, blue: 0.545).edgesIgnoringSafeArea(.all)
                VStack(spacing: 57) {
                    Text("BRAILLE LERNEN")
                        .font(.largeTitle).bold()
                        .foregroundColor(Color(red: 1, green: 0.929, blue: 0.063))
                    HStack( spacing: 86) {
                        NavigationLink( destination: Learning_Letters()){
                            Image("Buchstaben lernen").accessibilityLabel("Buchstaben lernen")
                        }
                        Image("Buchstaben üben").accessibilityLabel("Buchstaben üben")
                    }
                    HStack( spacing: 86) {
                        NavigationLink( destination: Learning_Numbers()){
                            Image("Zahlen lernen").accessibilityLabel("Zahlen lernen")
                        }
                        Image("Zahlen üben").accessibilityLabel("Zahlen üben")
                    }
                    HStack( spacing: 86) {
                        Image("Wörter lernen").accessibilityLabel("Wörter lernen")
                        Image("Wörter üben").accessibilityLabel("Wörter üben")
                    }
                    Image("ANFANG")
                }
                
                VStack {
                    
                }
                .padding()
            }
        }
    }
}
struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
            .opacity(configuration.isPressed ? 0.8 : 1.0)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  Letter a.swift
//  D-Braille
//
//  Created by Abdallah Amadou Gueye on 25.02.23.
//

import SwiftUI

struct Letter_a: View {
    @State private var navigateToNextView = false
    @State private var navigateToNextView2 = false
    var body: some View {
        ZStack {
            Color(red: 1, green: 0.929, blue: 0.063).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Buchstabe a")
                    .font(.largeTitle).bold()
                    .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                Spacer()
              Image("Antwort a")
                    .accessibilityLabel("")
                Spacer()
                    Button(action: {
                        navigateToNextView = true
                    }) {
                            Text("WIEDERHOLEN")
                                .font(.largeTitle).bold()
                                .foregroundColor(Color.white)
                                .frame(width: 346, height: 69)
                                .background(Color(red: 0, green: 0.102, blue: 0.545))
                                .cornerRadius(25)
                    }
                    .fullScreenCover(isPresented: $navigateToNextView) {
                        Learning_Letters()
                    }
                    .buttonStyle(CustomButtonStyle())
                    
                Button(action: {
                    navigateToNextView = true
                }) {
                            Text("NÄCHSTE")
                                .font(.largeTitle).bold()
                                .foregroundColor(Color.white)
                                .frame(width: 346, height: 69)
                                .background(Color(red: 0, green: 0.102, blue: 0.545))
                                .cornerRadius(25)
                    }
                .fullScreenCover(isPresented: $navigateToNextView) {
                    Learning_Letters()
                }
                
                .buttonStyle(CustomButtonStyle())
                Button(action: {
                    navigateToNextView2 = true
                }) {
                    Text("STARSEITE")
                        .font(.largeTitle).bold()
                        .foregroundColor(Color.white)
                        .frame(width: 346, height: 69)
                        .background(Color(red: 0, green: 0.102, blue: 0.545))
                        .cornerRadius(25)
                }
                .fullScreenCover(isPresented: $navigateToNextView2) {
                    ContentView()
                }
                .buttonStyle(CustomButtonStyle())
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
}
struct Letter_a_Previews: PreviewProvider {
    static var previews: some View {
        Letter_a()
    }
}

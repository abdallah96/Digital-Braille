//
//  letter w.swift
//  D-Braille
//
//  Created by Abdallah Amadou Gueye on 27.03.23.
//

import SwiftUI

struct letter_w: View {
    @State private var navigateToNextView = false
    @State private var navigateToNextView2 = false
    var body: some View {
        ZStack {
            Color(red: 1, green: 0.929, blue: 0.063).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Buchstabe w")
                    .font(.largeTitle).bold()
                    .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                Spacer()
                Image("Antwort w")
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
}

struct letter_w_Previews: PreviewProvider {
    static var previews: some View {
        letter_w()
    }
}

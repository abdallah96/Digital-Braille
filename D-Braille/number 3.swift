//
//  number 3.swift
//  D-Braille
//
//  Created by Abdallah Amadou Gueye on 26.02.23.
//

import SwiftUI

struct number_3: View {
    @State private var navigateToNextView = false
    @State private var navigateToNextView2 = false
    var body: some View {
        ZStack {
            Color(red: 1, green: 0.929, blue: 0.063).edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                Text("Zahlen 3")
                    .font(.largeTitle).bold()
                    .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
//                Spacer()
              Image("Antwort 3")
                    .accessibilityLabel("3")
//                Spacer()
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
                    Learning_Numbers()
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
                Learning_Numbers()
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

struct number_3_Previews: PreviewProvider {
    static var previews: some View {
        number_3()
    }
}

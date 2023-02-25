//
//  Learning Letters.swift
//  D-Braille
//
//  Created by Abdallah Amadou Gueye on 25.02.23.
//

import SwiftUI

struct Learning_Letters: View {
    @State private var isButton1Clicked = false
    @State private var isButton2Clicked = false
    @State private var isButton3Clicked = false
    @State private var isButton4Clicked = false
    @State private var isButton5Clicked = false
    @State private var isButton6Clicked = false
    @State private var navigateToNextView = false

    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 1, green: 0.929, blue: 0.063).edgesIgnoringSafeArea(.all)
                VStack(spacing: 30) {
                    Text("Buchstaben lernen")
                        .font(.largeTitle).bold()
                        .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                    HStack( ) {
                        Button(action: {
                            isButton1Clicked.toggle()
                        }) {
                            Text("1")
                                .font(.largeTitle).bold()
                                .foregroundColor(isButton1Clicked ? (Color.white) : Color(red: 0, green: 0.102, blue: 0.545))
                                .frame(width: 346, height: 69)
                                .background(isButton1Clicked ? Color(red: 0, green: 0.102, blue: 0.545) : Color.white)
                                .cornerRadius(25)
                        }
                        .buttonStyle(CustomButtonStyle())
                    }
                    Button(action: {
                        isButton2Clicked.toggle()
                    }) {
                        Text("2")
                            .font(.largeTitle).bold()
                            .foregroundColor(isButton2Clicked ? (Color.white) : Color(red: 0, green: 0.102, blue: 0.545))
                            .frame(width: 346, height: 69)
                            .background(isButton2Clicked ? Color(red: 0, green: 0.102, blue: 0.545) : Color.white)
                            .cornerRadius(25)
                    }
                    .buttonStyle(CustomButtonStyle())
                    Button(action: {
                        isButton3Clicked.toggle()
                    }) {
                        Text("3")
                            .font(.largeTitle).bold()
                            .foregroundColor(isButton3Clicked ? (Color.white) : Color(red: 0, green: 0.102, blue: 0.545))
                            .frame(width: 346, height: 69)
                            .background(isButton3Clicked ? Color(red: 0, green: 0.102, blue: 0.545) : Color.white)
                            .cornerRadius(25)
                    }
                    .buttonStyle(CustomButtonStyle())
                    Button(action: {
                        isButton4Clicked.toggle()
                    }) {
                        Text("4")
                            .font(.largeTitle).bold()
                            .foregroundColor(isButton4Clicked ? (Color.white) : Color(red: 0, green: 0.102, blue: 0.545))
                            .frame(width: 346, height: 69)
                            .background(isButton4Clicked ? Color(red: 0, green: 0.102, blue: 0.545) : Color.white)
                            .cornerRadius(25)
                    }
                    .buttonStyle(CustomButtonStyle())
                    Button(action: {
                        isButton5Clicked.toggle()
                    }) {
                        Text("5")
                            .font(.largeTitle).bold()
                            .foregroundColor(isButton5Clicked ? (Color.white) : Color(red: 0, green: 0.102, blue: 0.545))
                            .frame(width: 346, height: 69)
                            .background(isButton5Clicked ? Color(red: 0, green: 0.102, blue: 0.545) : Color.white)
                            .cornerRadius(25)
                    }
                    .buttonStyle(CustomButtonStyle())
                    Button(action: {
                        isButton6Clicked.toggle()
                    }) {
                        Text("6")
                            .font(.largeTitle).bold()
                            .foregroundColor(isButton6Clicked ? (Color.white) : Color(red: 0, green: 0.102, blue: 0.545))
                            .frame(width: 346, height: 69)
                            .background(isButton6Clicked ? Color(red: 0, green: 0.102, blue: 0.545) : Color.white)
                            .cornerRadius(25)
                    }
                    .buttonStyle(CustomButtonStyle())
                    
                    Button(action: {
                        if isButton1Clicked {
                            navigateToNextView = true
                            // letter a
                        } else if isButton1Clicked && isButton2Clicked {
                            // letter b
                        } else if isButton1Clicked && isButton4Clicked {
                            // letter c
                        }
                        else if isButton1Clicked && isButton4Clicked && isButton5Clicked {
                            // letter d
                        }
                        else if isButton1Clicked  && isButton5Clicked {
                            // letter e
                        }
                        else if isButton1Clicked && isButton2Clicked && isButton4Clicked {
                            // letter f
                        }
                        else if isButton1Clicked && isButton2Clicked && isButton4Clicked && isButton5Clicked {
                            // letter g
                        }
                        else if isButton1Clicked && isButton2Clicked && isButton5Clicked {
                            // letter h
                        }
                        else if isButton2Clicked && isButton4Clicked {
                            // letter i
                        }
                        else if isButton2Clicked && isButton4Clicked && isButton5Clicked {
                            // letter j
                        }
                    }) {
                        Text("NÄCHSTE")
                            .font(.largeTitle).bold()
                            .foregroundColor(Color.white)
                            .frame(width: 346, height: 69)
                            .background(Color(red: 0, green: 0.102, blue: 0.545))
                            .cornerRadius(25)
                    }
                    .navigationDestination(isPresented: $navigateToNextView){
                        Letter_a()
                        Text("a")
                            .hidden()
                    }


                }
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
struct Learning_Letters_Previews: PreviewProvider {
    static var previews: some View {
        Learning_Letters()
    }
}
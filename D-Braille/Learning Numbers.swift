//
//  Learning Numbers.swift
//  D-Braille
//
//  Created by Abdallah Amadou Gueye on 26.02.23.
//

import SwiftUI

struct Learning_Numbers: View {
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
                VStack {
                    Text("Zahlen lernen")
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
                   
                    .navigationDestination(isPresented: $navigateToNextView) {
                        destinationView()
                    }
                    Spacer()
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
                        destinationView()
                    }
                }
            }
        }
    }
    func destinationView() -> AnyView {
        switch(isButton1Clicked, isButton2Clicked, isButton3Clicked, isButton4Clicked, isButton5Clicked, isButton6Clicked) {
        case(true, false, false, false, false, true) :
            return AnyView(number_1())
            
        case(true, true, false, false, false, true) :
            return AnyView(number_2())
            
        case(true, false, false, true, false, true) :
            return AnyView(number_3())
            
        case(true, false, false, true, true, true) :
            return AnyView(number_4())
            
        case(true, false, false, false, true, true) :
            return AnyView(number_5())
            
        case(true, true, false, true, false, true) :
            return AnyView(number_6())
            
        case(true, true, false, true, true, true) :
            return AnyView(number_7())
            
        case(true, true, false, false, true, true) :
            return AnyView(number_8())
            
        case(false, true, false, true, false, true) :
            return AnyView(number_9())
            
        case(false, false, true, true, false, true) :
            return AnyView(number_0())
        default:
            return AnyView(no_letter())
        }
    }
}

struct Learning_Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Learning_Numbers()
    }
}

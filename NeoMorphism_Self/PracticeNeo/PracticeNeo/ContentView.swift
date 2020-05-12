//
//  ContentView.swift
//  PracticeNeo
//
//  Created by Ashish Singh on 30/04/20.
//  Copyright © 2020 Ashish Singh. All rights reserved.
//

import SwiftUI

extension Color {
    
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
    static let offWhiteDark = Color(red: 220 / 255, green: 227 / 255, blue: 242 / 255)
    static let grayButtons = Color(red: 170 / 255, green: 180 / 255, blue: 205 / 255)
    static let titleColor = Color(red: 120 / 255, green: 130 / 255, blue: 155 / 255)
    
    static let darkStart = Color(red: 50 / 255, green: 60 / 255, blue: 65 / 255)
    static let darkEnd = Color(red: 25 / 255, green: 25 / 255, blue: 30 / 255)
    
    static let lightStart = Color(red: 90 / 255, green: 128 / 255, blue: 247 / 255)
    static let lightEnd = Color(red: 135 / 255, green: 160 / 255, blue: 250 / 255)
}

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

struct DarkToggleStyle: ToggleStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }) {
            configuration.label
                .padding(30)
                .contentShape(Circle())
        }
        .background(
            DarkBackground(isHighlighted: configuration.isOn, shape: Circle())
        )
    }
}

struct DarkBackground<S: Shape>: View {
    var isHighlighted: Bool
    var shape: S
    
    var body: some View {
        ZStack {
            if isHighlighted {
                shape
                    .fill(LinearGradient(Color.darkEnd, Color.darkStart))
                    .overlay(shape.stroke(LinearGradient(Color.darkStart, Color.darkEnd), lineWidth: 4))
                    .shadow(color: Color.darkStart, radius: 10, x: 5, y: 5)
                    .shadow(color: Color.darkEnd, radius: 10, x: -5, y: -5)
            } else {
                shape
                    .fill(LinearGradient(Color.darkStart, Color.darkEnd))
                    .overlay(shape.stroke(Color.darkEnd, lineWidth: 4))
                    .shadow(color: Color.darkStart, radius: 10, x: -10, y: -10)
                    .shadow(color: Color.darkEnd, radius: 10, x: 10, y: 10)
            }
        }
    }
}

struct ColorfulBackground<S: Shape>: View {
    var isHighlighted: Bool
    var shape: S
    
    var body: some View {
        ZStack {
            if isHighlighted {
                shape
                    .fill(LinearGradient(gradient: Gradient(colors: [.lightStart, .lightEnd]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .overlay(shape.stroke(LinearGradient(Color.lightEnd, Color.lightStart), lineWidth: 6))
                    .shadow(color: Color.white.opacity(1), radius: 10, x: -10, y: -10)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            } else {
                shape
                    .fill(LinearGradient(Color.white, Color.offWhite))
                    .overlay(shape.stroke(LinearGradient(Color.gray.opacity(0.1), Color.gray.opacity(0.1)), lineWidth: 6))
                    .shadow(color: Color.white.opacity(1), radius: 10, x: -10, y: -10)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            }
        }
    }
}

struct ColorfulButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(30)
            .contentShape(Circle())
            .background(
                ColorfulBackground(isHighlighted: configuration.isPressed, shape: Circle())
        )
            .animation(nil)
    }
}
struct ColorfulToggleStyle: ToggleStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }) {
            configuration.label
                .padding(30)
                .contentShape(Circle())
        }
        .background(
            ColorfulBackground(isHighlighted: configuration.isOn, shape: Circle())
        )
    }
}

struct SimpleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(20)
            .contentShape(Circle())
            .background(
                Group {
                    
                    if configuration.isPressed {
                        
                        Circle()
                            .fill(Color.offWhite)
                            .overlay(
                                Circle()
                                    .stroke(Color.gray, lineWidth: 4)
                                    .blur(radius: 4)
                                    .offset(x: -2, y: -2)
                                    .mask(Circle().fill(LinearGradient(Color.black, Color.clear)))
                                
                        )
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 8)
                                    .blur(radius: 4)
                                    .offset(x: 2, y: 2)
                                    .mask(Circle().fill(LinearGradient(Color.clear, Color.black)))
                        )
                        
                    } else {
                        Circle()
                            .fill(Color.offWhite)
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 2)
                                
                        )
                            .overlay(
                                Circle()
                                    .stroke(Color.offWhite, lineWidth: 4)
                                
                        )
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(1), radius: 10, x: -10, y: -10)
                    }
                    
                }
        )
    }
    
}

struct ContentView: View {
    
    @State private var isToggled = false
    @State private var degree = 0.0
    
    
    var body: some View {
        ZStack {
            Color.offWhite
            HStack(spacing: 100) {
                Button(action: {
                    print("Back")
                }) {
                    Image(systemName: "arrow.left").resizable()
                        .frame(width: 15, height: 15)
                        .foregroundColor(Color.grayButtons)
                }
                .frame(width: 20, height: 20 )
                    
                .buttonStyle(SimpleButtonStyle())
                
                Text("PLAYING NOW")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.grayButtons)
                
                
                Button(action: {
                    print("Menu")
                }) {
                    Image(systemName: "text.justify").resizable()
                        .frame(width: 15, height: 15)
                        .foregroundColor(Color.grayButtons)
                }
                .frame(width: 20, height: 20 )
                .buttonStyle(SimpleButtonStyle())
            }
            .offset(y: -350)
            
            VStack(spacing: 40) {
                ZStack  {
                    Circle()
                        .fill(Color.offWhite)
                        .frame(width: 490, height: 330
                    )
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 15, y: 15)
                        .shadow(color: Color.white.opacity(1), radius: 10, x: -15, y: -15)
                    
                    Image("pink").resizable()
                        .frame(width: 480, height: 320)
                        .clipShape(Circle())
                    
                }
                VStack(spacing: 100) {
                    
                    VStack {
                        Text("Lose it")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.titleColor)
                        
                        Text("Flume Ft. Vic. Mensa")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(Color.grayButtons)
                        
                    }
                    HStack(spacing: 90) {
                        Button(action: {
                            print("BACKWARD")
                            self.degree += 360
                        }) {
                            Image(systemName: "backward.fill").resizable()
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color.titleColor)
                        }
                        .frame(width: 20, height: 20 )
                        .buttonStyle(ColorfulButtonStyle())
                        
                        Toggle(isOn: $isToggled) {
                            Image(systemName: "stop.fill")
                                .frame(width: 15, height: 15)
                                .foregroundColor(.white)
                        }
                        .toggleStyle(ColorfulToggleStyle())
                        
                        
                        Button(action: {
                            print("FORWARD")
                        }) {
                            Image(systemName: "forward.fill").resizable()
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color.titleColor)
                        }
                        .frame(width: 20, height: 20 )
                            
                        .buttonStyle(ColorfulButtonStyle())
                        
                    }
                }
                
                
                
            }
            
            
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

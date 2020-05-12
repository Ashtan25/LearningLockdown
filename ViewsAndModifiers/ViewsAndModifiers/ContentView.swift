//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Ashish Singh on 21/04/20.
//  Copyright © 2020 Ashish Singh. All rights reserved.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}

//Custom Containers

struct GridStack<Content: View>: View {
    let rows : Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0 ..< self.rows) { row in
                HStack {
                    ForEach(0 ..< self.columns) { column in
                        self.content(row, column)
                    }
                }
            }
        }
    }
    
    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }
}

struct WaterMark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
                Text(text)
                    .font(.caption)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.black)
        }
    }
}
extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
    
    func waterMarked(with text: String) -> some View {
        self.modifier(WaterMark(text: text))
    }
}




struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
            .clipShape(Capsule())
    }
}

struct ContentView: View {
    var body: some View {
       
        VStack{
            CapsuleText(text: "first")
                .foregroundColor(.black)
            CapsuleText(text: "Second")
                .foregroundColor(.yellow)
            Text("Hello World")
            //.modifier(Title())
                .titleStyle()
            Color.blue
                .frame(width: 300, height: 200)
                .waterMarked(with: "Made By: Ashish Singh")
            
            GridStack(rows: 4, columns: 4) { row , col in
                    Image(systemName: "\(row * 4 + col).circle")
                    Text("R\(row) C\(col)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by tung tran on 27/10/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        /*
         ZStack {
         VStack(spacing: 0){
         Color(red:1, green: 0.8, blue: 0)
         LinearGradient(gradient: Gradient(colors: [.white, .black, .blue]), startPoint: .top, endPoint: .bottom)
         
         RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 10, endRadius: 100)
         
         AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
         }
         
         Text("Third")
         .foregroundColor(.secondary)
         .padding(50)
         .background(Color.green)
         }.ignoresSafeArea()
         */ 
        
        /*
        VStack{
            Button{} label: {
                Text("Tap Me!")
                    .padding()
                    .foregroundColor(.green)
                
                Label("Edit", systemImage: "pencil")
            }
            
            Image(systemName: "pencil")
                .fixedSize()
            Button("Button 2"){}
            Button("Button 3"){}
            Button("Button 4"){}
        }*/
        
        Button("Show Alert"){
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert){
            Button("OK"){
                
            }
            Button("Cancel"){
                
            }
        } message: {
            Text("Please read this")
        }
    }
    
    func executeDelete () {
        print("Now deleting")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

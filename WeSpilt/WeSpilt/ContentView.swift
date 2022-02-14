//
//  ContentView.swift
//  WeSpilt
//
//  Created by tung tran on 27/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var tapCount = 0
    @State private var name = ""
    let studends = ["Harry", "Hermone", "Ron"]
    @State private var selectedStudent = "Harry"
    
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)

        let NSstringFromString = NSString(string: checkAmount)
        let doubleFromNSString = NSstringFromString.doubleValue
        
        let tipValue = Double(doubleFromNSString) / 100 * tipSelection
        let grandTotal = doubleFromNSString + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }
    
    
    var body: some View {
        /*
         NavigationView{
         Form{
         Section{
         Text("Hello, world!")
         Text("Hello, world!")
         }
         Section{
         Text("Hello, world!")
         Text("Hello, world!")
         }
         }
         .navigationTitle("SwiftUI")
         .navigationBarTitleDisplayMode(.inline)
         }*/
        
        /*
         Button("Tap count: \(tapCount)"){
         tapCount =  tapCount + 1;
         }*/
        /*
         Form{
         TextField("Enter your name", text: $name)
         Text("Hello world")
         }*/
        /*
         Form{
         ForEach(0..<100){
         Text("Row \($0)")
         }
         }*/
        /*
         NavigationView{
         Form{
         Picker("Select your student", selection: $selectedStudent){
         ForEach(studends, id: \.self){
         Text($0)
         }
         }
         }
         }*/
        NavigationView{
        Form {
            Section {
                TextField("Amount", text: $checkAmount)
                    .keyboardType(.decimalPad)
            }
            Section{
                Picker("Number of people", selection: $numberOfPeople){
                    ForEach(1..<100) {
                        Text("\($0) people")
                    }
                }
            }
            Section{
                Text("How much tiip do you want to leave")
                Picker("Number of people", selection: $tipPercentage){
                    ForEach(tipPercentages, id: \.self) {
                        Text("\($0) %")
                    }
                }.pickerStyle(.segmented)
            }
            
            Section {
                Text("\(totalPerPerson)")
            }
            Section {
                Text("Dead is like the wind")
            }
            Section {
                Text("Always by my side")
            }
            Section {
                Text("Dead is like the wind")
            }
            Section {
                Text("Always by my side")
            }
            Section {
                Text("Dead is like the wind")
            }
            Section {
                Text("Always by my side")
            }
        }.navigationTitle("WeSplit")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

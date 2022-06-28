//
//  ContentView.swift
//  swiftbot
//
//  Created by gleis on 6/28/22.
//

import SwiftUI

//date variable
//var date = Date()
//birthdate variable
//var birthdate = Date()


struct ContentView: View {
    //function to calculate age
    func calculateAge(birthdate: Date) -> Int {
        let currentDate = Date()
        let calendar = Calendar.current
        let ageComponents = calendar.dateComponents([.year], from: birthdate, to: currentDate)
        return ageComponents.year!
    }
    
    
    var body: some View {
        //state variable for name
    @State var uname = "Pete"
        VStack {
            
            //form to get user name and birthdate
            Form {
                Section {
                    TextField("Enter your name", text: $uname)
                    DatePicker("Enter your birthdate", selection: $birthdate)
                }
                //button to calculate age
                Section {
                    Button("Calculate your age") {
                        age = calculateAge(birthdate: birthdate)
                    }
                }
                //text to display age
                Section {
                    Text("Your age is \(age)")
                }
            }
            //button to say hello name
            Button(action: {
                print("Hello, \(uname)")
            }) {
                Text("Say Hello")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

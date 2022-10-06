//
//  ContentView.swift
//  TimeConverter
//
//  Created by Zach Uptin on 20/12/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var input = 0.0
    @State private var time = 0
    @FocusState private var amountIsFocused: Bool
    
    let times = ["seconds", "minutes", "hours", "days", "months", "years"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Initial Time", value: $input, format: .number)
                    
                }
                
                Section {
                    Text("Hello")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Converter
//
//  Created by Zach Uptin on 20/12/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var input = 1.0
    @State private var selectedUnits = 0
    @State private var inputUnit: Dimension = UnitDuration.seconds
    @State private var outputUnit: Dimension = UnitDuration.minutes
    @FocusState private var inputIsFocused: Bool
    
    let conversions = [ "Time", "Mass", "Distance", "Temperature"]
    
    let unitTypes = [
        [UnitDuration.seconds, UnitDuration.minutes, UnitDuration.hours],
        [UnitMass.grams, UnitMass.kilograms, UnitMass.ounces, UnitMass.pounds, UnitMass.metricTons],
        [UnitLength.meters, UnitLength.miles, UnitLength.nauticalMiles, UnitLength.yards, UnitLength.feet, UnitLength.kilometers],
        [UnitTemperature.celsius, UnitTemperature.fahrenheit, UnitTemperature.kelvin]
    ]
    
    let formatter: MeasurementFormatter
    
    var result: String {
        let inputMeasurement = Measurement(value: input, unit: inputUnit)
        let outputMeasurement = inputMeasurement.converted(to: outputUnit)
        return formatter.string(from: outputMeasurement)
    }
        
        var body: some View {
            NavigationView {
                Form {
                    Section {
                        TextField("Amount", value: $input, format: .number)
                            .keyboardType(.decimalPad)
                            .focused($inputIsFocused)
                    } header: {
                        Text("Ampount to convert")
                    }
                    
                    Picker("Conversion", selection: $selectedUnits) {
                        ForEach(0..<conversions.count) {
                            Text(conversions[$0])
                        }
                    }
                    
                    Picker("Convert from", selection: $inputUnit) {
                        ForEach(unitTypes[selectedUnits], id: \.self) {
                            Text(formatter.string(from: $0).capitalized)
                        }
                    }
                    
                    Picker("Convert to", selection: $outputUnit) {
                        ForEach(unitTypes[selectedUnits], id: \.self) {
                            Text(formatter.string(from: $0).capitalized)
                        }
                    }
                    
                    Section {
                        Text(result)
                    } header: {
                        Text("Result")
                    }
                }
                .navigationTitle("Converter")
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        
                        Button("Done") {
                            inputIsFocused = false
                        }
                    }
                }
                .onChange(of: selectedUnits) { newSelection in
                    let units = unitTypes[newSelection]
                    inputUnit = units[0]
                    outputUnit = units[1]
                }
            }
        }
        
        init() {
            formatter = MeasurementFormatter()
            formatter.unitOptions = .providedUnit
            formatter.unitStyle = .long
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

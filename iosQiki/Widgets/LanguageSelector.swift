//
//  LanguageSelector.swift
//  iosQiki
//
//  Created by Sachin on 06/03/24.
//

import SwiftUI

struct LanguageSelector: View {
    @State private var selectedOption = 0
    @State private var showingBottomSheet = false
    
    let options: [String]
    
    var body: some View {
        VStack {
            Button(action: {
                self.showingBottomSheet.toggle()
            }) {
                HStack {
                    Image("flag") // Replace "flag" with your image name
                    Text(options[selectedOption])
                        .padding(.leading, 10)
                        .foregroundColor(.black)
                    Image(systemName: "chevron.right")
                        .foregroundColor(.pink)
                        .padding(.leading, 20)
                }
                .padding()
            }
            
            Spacer()
        }
        .sheet(isPresented: $showingBottomSheet) {
            VStack {
                Picker(selection: $selectedOption, label: Text("Options")) {
                    ForEach(0..<options.count) { index in
                        Text(self.options[index]).tag(index)
                    }
                }
                .frame(width: .infinity, height: 200)
                .pickerStyle(WheelPickerStyle())
                .padding()
                
                Button(action: {
                    self.showingBottomSheet.toggle()
                }) {
                    Text("Done")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue) // Customize button color as needed
                        .cornerRadius(8)
                }
                .padding()
            }
            .background(Color.red) // Customize background color as needed
        }
        .frame(width: .infinity, height: 100)
    }
}

struct ContentView: View {
    let languageOptions = ["English", "Spanish", "French", "German"] // Add your language options here
    
    var body: some View {
        LanguageSelector(options: languageOptions)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
